package com.stewie.rest_booker.Database;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;

public class DatabaseManagerTest {

    @Test
    void testOpenConnection() throws Exception {
        assertNotNull(DatabaseManager.openConnection());
    }
    @Test
    void testCloseConnection() throws Exception {
        assertNotNull(DatabaseManager.openConnection());
    }
}
