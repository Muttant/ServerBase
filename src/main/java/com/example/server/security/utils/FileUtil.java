package com.example.server.security.utils;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FileUtil {
    private static Logger logger = LoggerFactory.getLogger(FileUtil.class);

    public static String saveFile(MultipartFile file, String packagePath) {
        try {
            String pattern = "dd_MM_yyyy_HH_mm_ss";
            DateFormat df = new SimpleDateFormat(pattern);
            Date date = Calendar.getInstance().getTime();
            String dateToString = df.format(date);
            StringBuilder fileName = new StringBuilder(FilenameUtils.getBaseName(file.getOriginalFilename()))
                    .append("_").append(dateToString).append(".").append(FilenameUtils.getExtension(file.getOriginalFilename()));
            Path folder = Paths.get(packagePath);
            if (!Files.exists(folder)) {
                Files.createDirectories(folder);
            }
            File fileToSave = new File(packagePath, fileName.toString());
            file.transferTo(fileToSave);

            return fileName.toString();
        } catch (Exception e) {
            logger.error("Save file to server fail: {}", e.getMessage());
            return null;
        }
    }
}
