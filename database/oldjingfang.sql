

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `module`, `name`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General_Old', 'General', 0, 1, '2023-08-30 00:55:01', NULL),
(2, 'CCMQ', 'Balanced', 0, 1, '2023-08-30 00:55:01', NULL),
(3, 'CCMQ', 'Sensitive', 0, 1, '2023-08-30 00:55:01', NULL),
(4, 'CCMQ', 'Qi Deficient', 0, 1, '2023-08-30 00:55:01', NULL),
(5, 'CCMQ', 'Yang Deficient', 0, 1, '2023-08-30 00:55:01', NULL),
(6, 'CCMQ', 'Yin Deficient', 0, 1, '2023-08-30 00:55:01', NULL),
(7, 'CCMQ', 'Phlegm Damp', 0, 1, '2023-08-30 00:55:01', NULL),
(8, 'CCMQ', 'Damp-Heat', 0, 1, '2023-08-30 00:55:01', NULL),
(9, 'CCMQ', 'Blood Stagnant', 0, 1, '2023-08-30 00:55:01', NULL),
(10, 'CCMQ', 'Qi Stagnant', 0, 1, '2023-08-30 00:55:01', NULL),
(11, 'CCMQ-SF', 'Normal', 0, 1, '2023-08-30 00:55:01', NULL),
(12, 'CCMQ-SF', 'Qi deficiency', 0, 1, '2023-08-30 00:55:01', NULL),
(13, 'CCMQ-SF', 'Yang deficiency', 0, 1, '2023-08-30 00:55:01', NULL),
(14, 'CCMQ-SF', 'Yin deficiency', 0, 1, '2023-08-30 00:55:01', NULL),
(15, 'CCMQ-SF', 'Phlegm damp', 0, 1, '2023-08-30 00:55:01', NULL),
(16, 'CCMQ-SF', 'Damp heat', 0, 1, '2023-08-30 00:55:01', NULL),
(17, 'CCMQ-SF', 'Blood stasis', 0, 1, '2023-08-30 00:55:01', NULL),
(18, 'CCMQ-SF', 'Qi stagnation', 0, 1, '2023-08-30 00:55:01', NULL),
(19, 'CCMQ-SF', 'Sensitive', 0, 1, '2023-08-30 00:55:01', NULL),
(20, 'BCQ_Negative', 'Yin-Xu', 0, 1, '2023-08-30 00:55:01', NULL),
(21, 'BCQ_Negative', 'Head', 20, 1, '2023-08-30 00:55:01', NULL),
(22, 'BCQ_Negative', 'Limbs', 20, 1, '2023-08-30 00:55:01', NULL),
(23, 'BCQ_Negative', 'Gastrointestinal Tract', 20, 1, '2023-08-30 00:55:01', NULL),
(24, 'BCQ_Negative', 'Body Surface', 20, 1, '2023-08-30 00:55:01', NULL),
(25, 'BCQ_Negative', 'Abdominal Cavity', 20, 1, '2023-08-30 00:55:01', NULL),
(26, 'BCQ_Positive', 'Yang-Xu', 0, 1, '2023-08-30 00:55:01', NULL),
(27, 'BCQ_Positive', 'Head', 26, 1, '2023-08-30 00:55:01', NULL),
(28, 'BCQ_Positive', 'Chest', 26, 1, '2023-08-30 00:55:01', NULL),
(29, 'BCQ_Positive', 'Four Limbs', 26, 1, '2023-08-30 00:55:01', NULL),
(30, 'BCQ_Positive', 'Body Surface', 26, 1, '2023-08-30 00:55:01', NULL),
(31, 'BCQ_Positive', 'Abdominal Cavity', 26, 1, '2023-08-30 00:55:01', NULL),
(32, 'BCQs', 'Stasis', 0, 1, '2023-08-30 00:55:01', NULL),
(33, 'BCQs', 'Trunk', 32, 1, '2023-08-30 00:55:01', NULL),
(34, 'BCQs', 'Body', 32, 1, '2023-08-30 00:55:01', NULL),
(35, 'BCQs', 'Head', 32, 1, '2023-08-30 00:55:01', NULL),
(36, 'BCQs', 'Gastrointestinal', 32, 1, '2023-08-30 00:55:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `email`) VALUES
(2, 'Qaisar', 'Khan', 'qaisar.qk17@gmail.com'),
(16, 'Jessica', 'Jackel', 'jessicaajackel@gmail.com'),
(17, 'Ava', 'Goperlud', 'avagoplerud@gmail.com'),
(18, 'Jen', 'Emswiler', 'emswiler.jen@gmail.com'),
(19, 'Jess', 'Jackel', 'jess.jackel@icloud.com'),
(20, 'Test', 'Test', 'qualtyacu@gmail.com'),
(21, 'Testing', 'Test', 'jbarber@thrivemedicalclinics.com'),
(22, 'Test 2', 'Test 2', 'barberacu@gmail.com'),
(23, 'Qaisar', 'Khan', 'qaisar.qk17@gmail.com'),
(24, 'Andrew', 'Berry', 'andrewberryny@gmail.com'),
(25, 'Qaisar', 'Khan', 'qaisar.qk17@gmail.com'),
(26, 'Jess', 'Brosnan', 'jess_44@icloud.com'),
(27, 'Britta', 'McCrae', 'britta.ashley@gmail.com'),
(28, 'Jessica', 'Crenek', 'jessicaroseatx@gmail.com'),
(29, 'Qaisar', 'Khan', 'qaisar.qk17@gmail.com'),
(30, 'testone', 'testone', 'ahsanchishti1992@gmail.com'),
(31, 'testone', 'testone', 'ahsanchishti1992@gmail.com'),
(32, 'ahhh', 'amed', 'ahsan.chishti@live.com'),
(33, 'Kylee', 'Lindsay', 'mianwalicodehouse@gmail.com'),
(34, 'Rafael', 'Keller', 'yasirhusain250@gmail.com'),
(35, 'Maia', 'Farley', 'yasir_dev@mailinator.com'),
(36, 'Chiquita', 'Johns', 'MianwaliCodeHouse@yopmail.com'),
(37, 'Glenna', 'Waller', 'yasirhusain250@gmail.com'),
(38, 'Tad', 'Schultz', 'newcreation786yasir1@yopmail.com'),
(39, 'Irene', 'Preston', 'gasyqog@mailinator.com'),
(40, 'yasir', 'Rutledge', 'newcreation786yasir1@yopmail.com'),
(41, 'Tana', 'Ochoa', 'newcreation786yasir2@yopmail.com'),
(42, 'Boris', 'Sears', 'newcreation786yasir2@yopmail.com'),
(43, 'Irma', 'Mcintyre', 'newcreation786yasir2@yopmail.com'),
(44, 'Donna', 'Bright', 'newcreation786yasir2@yopmail.com'),
(45, 'Cheyenne', 'Riggs', 'newcreation786yasir2@yopmail.com'),
(46, 'Lee', 'Lester', 'newcreation786yasir3@yopmail.com'),
(47, 'Quail', 'Bean', 'newcreation786yasir3@yopmail.com'),
(48, 'yasir', '1', 'testyasirtcm1@yopmail.com'),
(49, 'yasir', '2', 'testyasirtcm1@yopmail.com'),
(50, 'yasir', '3', 'testyasirtcm1@yopmail.com'),
(51, 'yasir', '4', 'testyasirtcm1@yopmail.com'),
(52, 'yasir', '5', 'testyasirtcm1@yopmail.com'),
(53, 'yasir', '6', 'testyasirtcm1@yopmail.com'),
(54, 'Again Test', 'yasir 1', 'testyasirtcm2@yopmail.com'),
(55, 'Again test', 'yasir 2', 'testyasirtcm2@yopmail.com'),
(56, 'Again test', 'yasir 3', 'testyasirtcm2@yopmail.com'),
(57, 'again', 'yasir 4', 'testyasirtcm2@yopmail.com'),
(58, 'Mechelle', 'Hopkins', 'testyasirtcm2@yopmail.com'),
(59, 'test for CCMQ', '1', 'testyasirtcm10@yopmail.com'),
(60, 'testyasirtcm11', '1', 'testyasirtcm11@yopmail.com'),
(61, 'BCQ_Negative', '111', 'testyasirtcm11@yopmail.com'),
(62, 'new yasir test', '1', 'testyasirtcm11@yopmail.com'),
(63, 'yasir', 'new', 'testyasirtcm12@yopmail.com'),
(64, 'new', 'test', 'testyasirtcm12@yopmail.com'),
(65, 'Sara', 'Mcintyre', 'testyasirtcm12@yopmail.com'),
(66, 'Irma', 'Williamson', 'testyasirtcm12@yopmail.com'),
(67, 'Carson', 'Weber', 'testyasirtcm12@yopmail.com'),
(68, 'new', 'test 11', 'testyasirtcm123@yopmail.com'),
(69, 'Ciara', 'Barrett', 'mianwalicodehouse@gmail.com'),
(70, 'Helen', 'Smith', 'newrandomyasiremail@yopmail.com'),
(71, 'Kelly', 'Cunningham', 'newrandomyasiremail@yopmail.com'),
(72, 'Bruce', 'Bird', 'newrandomyasiremail@yopmail.com'),
(73, 'Kyla', 'Hurley', 'newrandomyasiremail@yopmail.com'),
(74, 'Jonah', 'Stanton', 'newrandomyasiremail@yopmail.com'),
(75, 'Mia', 'Sargent', 'newrandomyasiremail@yopmail.com'),
(76, 'Ayanna', 'Solomon', 'newrandomyasiremail@yopmail.com'),
(77, 'Austin', 'Clarke', 'newrandomyasiremail@yopmail.com'),
(78, 'Azalia', 'Greer', 'newrandomyasiremail@yopmail.com'),
(79, 'Kyla', 'Simmons', 'mianwalicodehouse@yopmail.com'),
(80, 'Ori', 'Santos', 'xxxxxxxxxxxxxxtest@yopmail.com'),
(81, 'Hannah', 'Wright', 'xxxxxxxxxxxxxxtest@yopmail.com'),
(82, 'last', 'Confirm', 'xxxxxxxxxxxxxxtest@yopmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `clinicans`
--

CREATE TABLE `clinicans` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `practice_address` varchar(255) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `licence_number` int(11) DEFAULT NULL,
  `country_licence_issued` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinicans`
--

INSERT INTO `clinicans` (`id`, `firstname`, `lastname`, `email`, `password`, `status`, `practice_address`, `mailing_address`, `phone_number`, `licence_number`, `country_licence_issued`) VALUES
(1, 'Qaisar', 'Khan', 'qaisar.qk17@gmail.com', 'Qaisar1234*', 'e', NULL, NULL, NULL, NULL, NULL),
(2, 'Jordan', 'Barber', 'punx47@yahoo.com', 'XTtloSUNYx', 'e', NULL, NULL, NULL, NULL, NULL),
(5, 'Jessica', 'Jackel', 'jess.jackel@icloud.com', 'H6WhDw6bKs', 'e', NULL, NULL, NULL, NULL, NULL),
(6, 'ahsanahmed', 'chishti', 'ahsanchishti1992@gmail.com', 'RrZqYXTdOa', 'e', NULL, NULL, NULL, NULL, NULL),
(7, 'test user', 'yasir', 'yasirhusain250@gmail.com', 'iz3C4K51Sy', 'e', NULL, NULL, NULL, NULL, NULL),
(8, 'Yasir', 'Hussain', 'yasirtest@gmail.com', 'ZlRcFJWnsn', 'e', 'Mianwali', 'Mianwali', 786, 786, 'Pakistan'),
(9, 'mianwali', 'mianwali', 'newrandomyasiremail@yopmail.com', 'Svmgssk3IX', 'e', 'mianwali', 'mianwali', 1231312312, 123123, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `accounttype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`username`, `password`, `accounttype`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

CREATE TABLE `emailtemplates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template` longtext DEFAULT NULL,
  `clinican_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailtemplates`
--

INSERT INTO `emailtemplates` (`id`, `template`, `clinican_id`, `created_at`, `updated_at`) VALUES
(1, 'Hi, __firstname__ __lastname__ , You have been invited to take a Herbal Consult assessment by your practitioner,\nKindly, Visit: __link__\n', 0, NULL, '2023-09-18 04:27:33'),
(2, 'Hi, __firstname__ __lastname__ , You have been invited to take a Herbal Consult assessment by your practitioner,\nKindly, Visit: __link__\n\nupdated', 1, '2023-09-18 04:24:19', '2023-09-18 04:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) NOT NULL,
  `clientid` int(11) NOT NULL,
  `invitationcode` int(11) DEFAULT NULL,
  `attempt` char(1) DEFAULT NULL,
  `stage` varchar(20) DEFAULT NULL,
  `attemptdate` date DEFAULT NULL,
  `inviteby` int(11) DEFAULT NULL,
  `invitedate` date DEFAULT NULL,
  `testing` int(11) DEFAULT NULL,
  `firstfamily` int(11) DEFAULT NULL,
  `secondfamily` int(11) DEFAULT NULL,
  `thirdfamily` int(11) DEFAULT NULL,
  `finalresult` int(11) DEFAULT NULL,
  `maingroup_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `clientid`, `invitationcode`, `attempt`, `stage`, `attemptdate`, `inviteby`, `invitedate`, `testing`, `firstfamily`, `secondfamily`, `thirdfamily`, `finalresult`, `maingroup_id`) VALUES
(4, 0, 67698412, 'y', 'Closed', '2023-01-08', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0),
(9, 0, 9842570, 'y', 'Closed', '2023-06-07', 7, NULL, 1, NULL, NULL, NULL, NULL, 0),
(15, 8, 36250556, 'y', 'Closed', '2023-06-10', 1, '2023-06-10', 1, NULL, NULL, NULL, NULL, 0),
(16, 8, 76226432, 'y', 'Closed', '2023-06-10', 1, '2023-06-10', 1, 1, 3, 2, 1, 0),
(17, 8, 46801953, 'y', 'Closed', '2023-06-10', 1, '2023-06-10', 1, 1, 1, 1, 1, 0),
(19, 8, 18392102, 'y', 'Closed', '2023-06-12', 1, '2023-06-12', 1, 5, 5, 5, 5, 0),
(20, 8, 56872682, 'y', 'Closed', '2023-06-13', 1, '2023-06-13', 1, 3, 3, 3, 3, 0),
(21, 8, 70139782, 'y', 'Closed', '2023-06-13', 1, '2023-06-13', 1, 2, 2, 2, 2, 0),
(22, 8, 80504269, 'y', 'Closed', '2023-06-15', 1, '2023-06-15', 1, NULL, NULL, NULL, NULL, 0),
(23, 11, 35556622, 'y', 'Closed', '2023-06-18', 2, '2023-06-18', 1, 1, 1, 1, 1, 0),
(24, 12, 88004060, 'y', 'Closed', '2023-06-18', 2, '2023-06-18', 1, NULL, NULL, NULL, NULL, 0),
(32, 15, 77127424, 'n', 'Not attempted', NULL, 4, '2023-07-01', 0, NULL, NULL, NULL, NULL, 0),
(33, 15, 6148780, 'n', 'Not attempted', NULL, 4, '2023-07-01', 0, NULL, NULL, NULL, NULL, 0),
(34, 16, 73409266, 'y', 'Closed', '2023-07-07', 5, '2023-07-02', 1, NULL, NULL, NULL, NULL, 0),
(35, 17, 90990366, 'y', 'Closed', '2023-08-14', 5, '2023-07-07', 0, NULL, NULL, NULL, NULL, 0),
(36, 18, 69041509, 'n', 'Not attempted', NULL, 5, '2023-07-07', 0, NULL, NULL, NULL, NULL, 0),
(37, 19, 8586756, 'y', 'Closed', '2023-07-20', 5, '2023-07-07', 0, NULL, NULL, NULL, NULL, 0),
(38, 19, 25370925, 'y', 'Closed', '2023-08-08', 5, '2023-07-20', 0, NULL, NULL, NULL, NULL, 0),
(39, 18, 89225815, 'n', 'Not attempted', NULL, 5, '2023-07-21', 0, NULL, NULL, NULL, NULL, 0),
(40, 20, 90902118, 'n', 'Not attempted', NULL, 2, '2023-08-02', 0, NULL, NULL, NULL, NULL, 0),
(41, 20, 99748339, 'n', 'Not attempted', NULL, 2, '2023-08-02', 0, NULL, NULL, NULL, NULL, 0),
(42, 21, 53011775, 'y', 'Closed', '2023-08-02', 2, '2023-08-02', 0, NULL, NULL, NULL, NULL, 0),
(43, 16, 37563222, 'n', 'Not attempted', NULL, 5, '2023-08-07', 1, NULL, NULL, NULL, NULL, 0),
(44, 20, 97093026, 'n', 'Not attempted', NULL, 2, '2023-08-08', 0, NULL, NULL, NULL, NULL, 0),
(45, 22, 72497980, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(46, 22, 63531715, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(47, 22, 5831210, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(48, 23, 56352193, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(49, 23, 38558673, 'n', 'Not attempted', NULL, 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(50, 22, 96210600, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(51, 23, 91276141, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(52, 22, 39869470, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(53, 22, 24207787, 'y', 'Closed', '2023-08-08', 2, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(54, 24, 17798446, 'y', 'Closed', '2023-08-09', 2, '2023-08-08', 0, NULL, NULL, NULL, NULL, 0),
(55, 16, 59186635, 'y', 'Closed', '2023-08-08', 5, '2023-08-08', 1, NULL, NULL, NULL, NULL, 0),
(56, 23, 15904422, 'y', 'Closed', '2023-08-09', 2, '2023-08-09', 1, NULL, NULL, NULL, NULL, 0),
(57, 23, 3168908, 'y', 'Closed', '2023-08-09', 2, '2023-08-09', 1, NULL, NULL, NULL, NULL, 0),
(58, 23, 61296997, 'y', 'Closed', '2023-08-09', 2, '2023-08-09', 1, NULL, NULL, NULL, NULL, 0),
(59, 23, 92116431, 'y', 'Closed', '2023-08-09', 2, '2023-08-09', 1, NULL, NULL, NULL, NULL, 0),
(60, 25, 47020079, 'y', 'Closed', '2023-08-09', 5, '2023-08-09', 1, NULL, NULL, NULL, NULL, 0),
(61, 16, 63546187, 'y', 'Closed', '2023-08-09', 5, '2023-08-09', 1, NULL, NULL, NULL, NULL, 0),
(62, 16, 81350822, 'y', 'Closed', '2023-08-10', 5, '2023-08-10', 1, NULL, NULL, NULL, NULL, 0),
(63, 16, 96979159, 'y', 'Closed', '2023-08-10', 5, '2023-08-10', 1, NULL, NULL, NULL, NULL, 0),
(64, 26, 94847239, 'y', 'Closed', '2023-08-14', 5, '2023-08-11', 0, NULL, NULL, NULL, NULL, 0),
(65, 27, 69359455, 'y', 'Closed', '2023-08-17', 5, '2023-08-17', 0, NULL, NULL, NULL, NULL, 0),
(66, 28, 5345562, 'y', '1st phase', NULL, 5, '2023-08-21', 0, NULL, NULL, NULL, NULL, 0),
(67, 24, 34295290, 'y', 'Closed', '2023-08-23', 2, '2023-08-22', 0, NULL, NULL, NULL, NULL, 0),
(68, 29, 91849460, 'y', 'Closed', '2023-08-28', 1, '2023-08-27', 1, NULL, NULL, NULL, NULL, 0),
(69, 31, 37269410, 'y', '1st phase', '2023-09-01', 1, '2023-09-01', 0, 1, 1, 1, 1, 0),
(70, 31, 19000701, 'n', 'Not attempted', NULL, 1, '2023-09-03', 0, NULL, NULL, NULL, NULL, 0),
(71, 32, 12713350, 'n', 'Not attempted', NULL, 1, '2023-09-03', 1, NULL, NULL, NULL, NULL, 0),
(72, 33, 18802024, 'n', 'Not attempted', NULL, 1, '2023-09-06', 0, NULL, NULL, NULL, NULL, 0),
(73, 34, 98190706, 'n', 'Not attempted', NULL, 1, '2023-09-06', 1, NULL, NULL, NULL, NULL, 0),
(74, 35, 54156141, 'n', 'Not attempted', NULL, 1, '2023-09-06', 1, NULL, NULL, NULL, NULL, 0),
(75, 36, 27857744, 'y', 'Closed', '2023-09-08', 1, '2023-09-06', 1, NULL, NULL, NULL, NULL, 0),
(76, 37, 86823074, 'y', 'Closed', '2023-09-08', 1, '2023-09-06', 0, NULL, NULL, NULL, NULL, 0),
(77, 43, 33843989, 'n', 'Not attempted', NULL, 1, '2023-09-08', 1, NULL, NULL, NULL, NULL, NULL),
(78, 44, 40586335, 'n', 'Not attempted', NULL, 1, '2023-09-08', 0, NULL, NULL, NULL, NULL, NULL),
(79, 45, 82724059, 'y', 'Closed', '2023-09-08', 1, '2023-09-08', 1, NULL, NULL, NULL, NULL, NULL),
(80, 47, 32500526, 'y', 'Closed', '2023-09-08', 1, '2023-09-08', 1, NULL, NULL, NULL, NULL, 21),
(81, 48, 4240607, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 8),
(82, 49, 70715362, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 11),
(83, 50, 40843465, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 18),
(84, 51, 61905053, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 18),
(85, 52, 13923780, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 22),
(86, 53, 9866474, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 19),
(87, 53, 29454291, 'n', 'Not attempted', NULL, 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 19),
(88, 54, 29335069, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 11),
(89, 55, 16162478, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 8),
(90, 56, 43438393, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 9),
(91, 56, 98954335, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 9),
(92, 56, 24095397, 'n', 'Not attempted', NULL, 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 9),
(93, 57, 65081352, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 18),
(94, 58, 4198622, 'y', 'Closed', '2023-09-10', 1, '2023-09-10', 1, NULL, NULL, NULL, NULL, 18),
(95, 59, 91086202, 'y', 'Closed', '2023-09-12', 1, '2023-09-12', 0, NULL, NULL, NULL, NULL, 18),
(96, 59, 18490832, 'y', 'Closed', '2023-09-13', 1, '2023-09-12', 0, NULL, NULL, NULL, NULL, 18),
(97, 60, 18115433, 'y', 'Closed', '2023-09-13', 1, '2023-09-13', 0, NULL, NULL, NULL, NULL, 19),
(98, 61, 55189106, 'y', 'Closed', '2023-09-13', 1, '2023-09-13', 0, NULL, NULL, NULL, NULL, 20),
(99, 61, 25940175, 'y', 'Closed', '2023-09-14', 1, '2023-09-13', 0, NULL, NULL, NULL, NULL, 20),
(100, 60, 31529432, 'y', 'Closed', '2023-09-13', 1, '2023-09-13', 0, NULL, NULL, NULL, NULL, 19),
(101, 60, 56506506, 'y', 'Closed', '2023-09-14', 1, '2023-09-14', 0, NULL, NULL, NULL, NULL, 19),
(102, 60, 61471547, 'y', 'Closed', '2023-09-14', 1, '2023-09-14', 0, NULL, NULL, NULL, NULL, 19),
(103, 60, 39731415, 'y', 'Closed', '2023-09-14', 1, '2023-09-14', 0, NULL, NULL, NULL, NULL, 19),
(104, 60, 645878, 'y', 'Closed', '2023-09-14', 1, '2023-09-14', 0, NULL, NULL, NULL, NULL, 19),
(105, 62, 77991077, 'y', 'Closed', '2023-09-14', 1, '2023-09-14', 0, NULL, NULL, NULL, NULL, 19),
(106, 62, 14526122, 'y', 'Closed', '2023-09-15', 1, '2023-09-14', 0, NULL, NULL, NULL, NULL, 19),
(107, 63, 15855737, 'y', 'Closed', '2023-09-15', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(108, 63, 61142005, 'y', 'Closed', '2023-09-16', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(109, 63, 7749289, 'n', 'Not attempted', NULL, 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(110, 63, 55053780, 'n', 'Not attempted', NULL, 1, '2023-09-16', 0, NULL, NULL, NULL, NULL, 22),
(111, 64, 6445097, 'n', 'Not attempted', NULL, 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 21),
(112, 64, 94001537, 'y', 'Closed', '2023-09-15', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 21),
(113, 64, 6184023, 'n', 'Not attempted', NULL, 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 21),
(114, 61, 7831930, 'n', 'Not attempted', NULL, 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 20),
(115, 65, 49512394, 'y', 'Closed', '2023-09-15', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 20),
(116, 65, 81757570, 'y', 'Closed', '2023-09-16', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 20),
(117, 66, 34954521, 'n', 'Not attempted', NULL, 1, '2023-09-15', 1, NULL, NULL, NULL, NULL, 14),
(118, 67, 24628929, 'y', 'Closed', '2023-09-15', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(119, 67, 96596476, 'y', 'Closed', '2023-09-16', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(120, 67, 94608417, 'y', 'Closed', '2023-09-17', 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(121, 66, 29039708, 'n', 'Not attempted', NULL, 1, '2023-09-15', 1, NULL, NULL, NULL, NULL, 14),
(122, 48, 5685287, 'n', 'Not attempted', NULL, 1, '2023-09-15', 1, NULL, NULL, NULL, NULL, 8),
(123, 67, 20525199, 'n', 'Not attempted', NULL, 1, '2023-09-15', 0, NULL, NULL, NULL, NULL, 22),
(124, 68, 52926909, 'y', 'Closed', '2023-09-18', 1, '2023-09-18', 1, NULL, NULL, NULL, NULL, 19),
(125, 69, 91915542, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 21),
(126, 70, 45672485, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 16),
(127, 79, 68991300, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 18),
(128, 80, 47765718, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 8),
(129, 81, 53102381, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 18),
(130, 81, 53102381, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 19),
(131, 81, 53102381, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 20),
(132, 81, 53102381, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 21),
(133, 82, 22619218, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 18),
(134, 82, 22619218, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 19),
(135, 82, 22619218, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 20),
(136, 82, 22619218, 'n', 'Not attempted', NULL, 8, '2023-09-19', 1, NULL, NULL, NULL, NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `maingroup`
--

CREATE TABLE `maingroup` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `threshold` float DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maingroup`
--

INSERT INTO `maingroup` (`id`, `name`, `threshold`, `type`, `notes`) VALUES
(8, 'GuiZhi', 5, '', ''),
(9, 'MaHuang', 1, '', NULL),
(10, 'ChaiHu', 4, '', NULL),
(11, 'DaHuang', 2, '', NULL),
(12, 'HuangQi', 4, 'boolean', NULL),
(13, 'ShiGao', 2, 'boolean', NULL),
(14, 'HuangLian', 5, 'boolean', NULL),
(15, 'GanJiang', 4, 'boolean', NULL),
(16, 'ZhiFuZi', 4, 'boolean', NULL),
(17, 'BanXia', 3, 'boolean', NULL),
(18, 'CCMQ', 5, 'range', NULL),
(19, 'CCMQ-SF', 5, 'range', ''),
(20, 'BCQ_Negative', 5, 'range', NULL),
(21, 'BCQ_Positive', 5, 'range', NULL),
(22, 'BCQs', 5, 'range', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2023_08_30_052342_create_categories_table', 1),
(19, '2023_08_30_052359_add_category_id_in_questions_table', 1),
(20, '2023_09_01_045911_add_optionsfields_in_questions_table', 2),
(21, '2023_09_13_103619_add_type_to_maingroup_table', 3),
(22, '2023_09_18_080816_create_emailtemplates_table', 4),
(23, '2023_09_19_035747_add_more_column_to_clinicans_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL,
  `question` text NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `questionoption1` varchar(500) DEFAULT NULL,
  `questionoption2` varchar(500) DEFAULT NULL,
  `questionoption5` varchar(255) DEFAULT NULL,
  `questionoption4` varchar(255) DEFAULT NULL,
  `questionoption3` varchar(255) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `explainertext` text DEFAULT NULL,
  `clinicaltext` text DEFAULT NULL,
  `maingroupid` int(11) NOT NULL,
  `subgroupid` int(11) DEFAULT NULL,
  `reservevalue` varchar(50) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `weight`, `priority`, `questionoption1`, `questionoption2`, `questionoption5`, `questionoption4`, `questionoption3`, `answer`, `explainertext`, `clinicaltext`, `maingroupid`, `subgroupid`, `reservevalue`, `category_id`) VALUES
(21, 'Fever or subjective feeling of fever; sweats easily, even to the point of spontaneous sweating; aversion to wind or drafts, dislike of cold climates or cold food or drink', 2, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(22, 'Joint Pain', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(23, 'A real or imagined sensation of a feeling of upward movement or pulsations in the abdomen AND/OR heart palpitations. ', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(24, 'Easily startled', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(25, 'Feel flushed?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(26, 'Difficulty sleeping?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(27, 'Do you consider yourself to be more thin than thick?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(28, 'Is your skin moist?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(29, 'Is your abdominal area more flat than bulging?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(30, 'Do you have sweaty hands or feet?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 0, '', 1),
(31, 'Do you have night sweats?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 10, '', 1),
(32, 'Do you have frequent colds?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 10, '', 1),
(33, 'Do you have any abdominal pain?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 10, '', 1),
(34, 'Do you feel you are a light sleeper or have many dreams throughout the night?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 10, '', 1),
(35, 'Do you have muscle spasms?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 8, 10, '', 1),
(36, 'Fever with Chills, headaches, joint pain or body aches.', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 0, '', 1),
(37, 'Lack of sweating with fever or exertion, cough and/or wheezing, and nasal congestion?', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 0, '', 1),
(38, 'Retention of fluids (edema) with reduced urination', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 0, '', 1),
(39, 'Do you feel you have well developed muscles?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(40, 'Do you feel you have a rather loose musculature (present but lacks tone)', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(41, 'Is you complexion, relative to your ethnicity, more yellow or has a shallow dark hue?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(42, 'is your face more without luster and slightly puffy?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(43, 'Is your skin course or dry?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(44, 'if known, do you have low or average blood pressure?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, 'Unknown', 1),
(45, 'Are you lips dark or purplish-red?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(46, 'Do you feel your mouth is moist or normal (not dry)?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(47, 'Do you have wheezing?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(48, 'Do you feel chilled?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(49, 'Do you have runny nose with clear discharge?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(50, 'Do your muscles feel heavy and sore?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(51, 'Does your body feel tired or worn out?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(52, 'Do you feel like you have a slight puffiness to your skin?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(53, 'Do you have a feeling of pressure in your abdomen or bloating?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 9, 11, '', 1),
(54, 'Feeling of discomfort in the chest or fullness of the side of the chest or under the rib cage?', 2, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 0, '', 1),
(55, 'Alternating fever and chills?', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 0, '', 1),
(56, 'Do your symptoms come and go (episodic)?', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 0, '', 1),
(57, 'Do you have symptoms in the shoulders, head, neck, or forehead area?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 0, '', 1),
(58, 'Do you have symptoms in the hips, groin, or lower abdomen?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 0, '', 1),
(59, 'Are you of a medium or slightly thin physique?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, '', 1),
(60, 'Does your complexion lack luster or have a yellowish, greenish yellow, or greenish pale complexion?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, '', 1),
(61, 'Is your skin dry and muscle tone firm?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, '', 1),
(62, 'If you have abdominal pain, is it worse with pressure or touch?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, 'N/A', 1),
(63, 'Do you feel sensitive to temperature changes?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, '', 1),
(64, 'Do you have mood swings?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, '', 1),
(65, 'Is your appetite easily affected by your emotions?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, '', 1),
(66, 'If you are female, do you have irregular periods?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, 'N/A', 1),
(67, 'If you are female, do you have premenstrual symptoms such as breast distention, irritability, stuffy sensation in the chest?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, 'N/A', 1),
(68, 'if you are female, do you have dark menstrual blood or clots in the menstrual blood?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, 'N/A', 1),
(69, 'if you are female, do you have pain during menstruation?', 0, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 10, 12, 'N/A', 1),
(70, 'Abdominal fullness with pain with a feeling of a tight/resistant abdominal wall (belly)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 0, '', 1),
(71, 'A feeling of resistance in the abdominal wall (belly) and constipation', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 0, '', 1),
(72, 'Restless, irritable or easily excited and a feeling of a fever (or actual fever) and sweating (without an aversion to wind or drafts)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 0, '', 1),
(73, 'You have a robust physique, strong and firm muscles.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(74, 'Your complexion is oily or greasy and may have a reddish tone to it.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(75, 'Dislike of heat and favors cool temperatures', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(76, 'Always hungry', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(77, 'Sometimes are dizzy or have vertigo', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(78, 'Constipated', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(79, 'uneven sweating (in some areas, but not all over)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(80, 'light constant sweating', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(81, 'dry mouth with thick and sticky saliva or fluids in the mouth.', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(82, 'A puffy look to your chest', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(83, 'A tender abdominal wall (belly) or dislike of pressure to the area.', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, '', 1),
(84, 'High cholesterol (hyperlipidemia)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, 'Unknown', 1),
(85, 'High blood pressure (hypertension)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 11, 13, 'Unknown', 1),
(86, 'Spontaneous sweating without fever, insomnia, or frequent headaches', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(87, 'Night sweats', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(88, 'Aversion to wind', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(89, 'Your body feels heavy', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(90, 'You have numbness or uncomfortable limbs', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(91, 'Edema (fluid retention) with a heavy feeling in the body, along with decreased urination.', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(92, 'Long-term non healing skin ulcers with clear watery discharge.', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 0, '', 1),
(93, 'your musculature is more soft and relaxed as opposed to tight and toned.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(94, 'Your eyes look tired.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(95, 'Your abdominal wall is soft and without tone.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(96, 'You have allergies', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(97, 'you cough often', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(98, 'you have wheezing or asthma', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(99, 'You have a runny nose', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(100, 'Your symptoms are worse with drafts or chills', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(101, 'Your stools are watery/unformed or start off dry and then are watery/unformed', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(102, 'You have edema or fluid retention in the feet and/or ankles', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(103, 'You hands and feet are numb.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 12, 14, '', 1),
(104, 'You are irritable or frustrated and thirsty with a desire to drink liquids', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 0, '', 1),
(105, 'You dislike and avoid heat and you sweat a lot', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 0, '', 1),
(106, 'Strong thirst', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 15, '', 1),
(107, 'High Fever', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 15, '', 1),
(108, 'Restlessness', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 15, '', 1),
(109, 'Significant/profuse sweating', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 15, '', 1),
(110, 'Itchy skin, with red rashes.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 13, 15, '', 1),
(111, 'Irritability and restlessness, and/or heart palpitations (real or felt), insomnia.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 0, '', 1),
(112, 'A feeling of being feverish (real fever or only the sensation of having one)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 0, '', 1),
(113, 'Difficulty to focus or concentrate.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 0, '', 1),
(114, 'Digestive symptoms such as a focused feeling in the upper part of your stomach, stomach aches, abdominal pain, diarrhea, nausea and/or vomiting.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 0, '', 1),
(115, 'Red faced', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(116, 'Tendency towards bleeding', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(117, 'Tenderness to the upper abdomen (belly) when touched with dull pain.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(118, 'Relatively strong and robust physique', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(119, 'Flushed or dark red and oily complexion', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(120, 'Bloodshot eyes', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(121, 'Sticky discharge or \"crusty\" eyes', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(122, 'Favors cold and dislikes heat', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(123, 'Generally restless and/or have insomnia and excessive dreaming', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(124, 'dry mouth with a bitter taste', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 14, 16, '', 1),
(125, 'Clear thin and odorless vomiting', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 0, '', 1),
(126, 'Thin or watery stool without smell', 2, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 0, '', 1),
(127, 'Excessive saliva in the mouth and no thirst', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 0, '', 1),
(128, 'Aversion to cold and a desire for warmth.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 0, '', 1),
(129, 'Trouble being calm (listless) and without motivation', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 0, '', 1),
(130, 'Poor appetite', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(131, 'Abdominal (belly) distention and a sensation of fullness and/or a fixed sensation above the stomach that feels distended or full.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(132, 'Dry mouth, but no desire to drink.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(133, 'Extremely cold hands and feet', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(134, 'Cold sweats', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(135, 'Intense stomach pain.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(136, 'Cold feeling from the waist down with a feeling of heaviness, poressure, or achy pain.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(137, 'Fluid retention (edema) all the time or frequently.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(138, 'Entire body feels achy, fatigued, or sluggish', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 15, 17, '', 1),
(139, 'Severe joint pain or localized swellings of the joints.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(140, 'Muscle spasms and lack of range of motion', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(141, 'Frigid extremities', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(142, 'Extreme sweating with cold extremities and chills', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(143, 'Vomiting and diarrhea with cold hands and feet and abdominal pain', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(144, 'You are chronically ill and debilitated with weakness in the lower half of the body with cold back or knees', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(145, 'You have chronic nephritis or cardiac insufficiency with edema', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 0, '', 1),
(146, 'You have a desire to lay down, curl up, and sleep', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 18, '', 1),
(147, 'You dislike cold and have cold extremities (hands and feet)', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 18, '', 1),
(148, 'Dizinees to the point where you are unsteady on your feet', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 18, '', 1),
(149, 'Shortness of breath, muscle twitches', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 18, '', 1),
(150, 'Edema of the lower limbs or facial edema', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 18, '', 1),
(151, 'Cough or wheezing with clear, thin phlegm.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 16, 18, '', 1),
(152, 'Nausea or occasional nausea with severe vomiting', 1, 1, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 0, '', 1),
(153, 'Dizziness or headaches', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 0, '', 1),
(154, 'Feeling of something caught in your throat or needing to always clear your throat', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 0, '', 1),
(155, 'Significant sputum or phlegm', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 0, '', 1),
(156, 'irritability with an inability to calm down easy', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 0, '', 1),
(157, 'epilepsy', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 0, '', 1),
(158, 'No thirst or dislike to drink fluids.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(159, 'Coughing with a lot of thin sputum or watery sounds in the chest.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(160, 'Bitter taste in the mouth with nausea or vomiting', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(161, 'Are you emotional, easily startled, panicky, have insomnia, or dream disturbed sleep?', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(162, 'Regurgitation or vomiting food eaten long ago (vomiting morning meal in the evening), vomit contains mostly saliva', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(163, 'Focal distention or fullness, that is firm to the touch above the stomach with dry stools.', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(164, 'Upper abdominal (belly) fullness and stiffness with discomfort. Mild abdominal distention but soft when palpated. ', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(165, 'Feeling of heat within the body, restless, with excessive dreaming or insomnia', 1, 0, 'True', 'False', '', '', '', 'True', NULL, NULL, 17, 19, '', 1),
(173, 'Are you energetic?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(174, 'Do you tire easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(175, 'Do you often need to raise your voice for people to hear you?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(176, 'Are you the first person to wear more clothing to keep warm?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(177, 'Do you adapt to the environment and social settings easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(178, 'Difficulties falling asleep at night?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(179, 'Do you often feel bothered or unhappy?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(180, 'Do you have difficulties remembering?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 2),
(181, 'Do you sneeze often?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(182, 'Do you have a chronic stuffy or runny nose?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(183, 'Seasonal cough, asthma, smell change?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(184, 'Allergies to food, medication, smell, pollen, weather?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(185, 'Do you get skin hives?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(186, 'Do you have purple spots on the skin from allergies?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(187, 'When you scratch your skin do you get red marks easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 3),
(188, 'Do you tire easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(189, 'Do you have shortness of breath?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(190, 'Do you feel like you have a fast heartbeat sometimes?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(191, 'Do you get dizzy easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(192, 'Do you catch colds easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(193, 'Do you like the quiet and prefer not to talk?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(194, 'Is your voice soft?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(195, 'Do you sweat easily during physical activity?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 4),
(196, 'Do you have cold hands or feet or feel cold?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(197, 'Does your stomach, back, waist, or knees feel cold to the touch?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(198, 'Are you cold more than other people?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(199, 'Are you intolerant to cold temperatures?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(200, 'Do you catch colds easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(201, 'Do you dislike cold foods or drinks?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(202, 'Do cold foods or drinks make you cold or induce diarrhea?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 5),
(203, 'Do you feel hot in your palms or feet?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(204, 'Do you feel hot in the body and face?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(205, 'Do you have dry lips and skin?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(206, 'Do your lips look redder than other people?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(207, 'Do you have frequent constipation or dry stool?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(208, 'Are your cheeks red?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(209, 'Do you have dry eyes?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(210, 'Do you have a dry mouth or throat or do you desire water often?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 6),
(211, 'Do you feel fullness in your chest or stomach?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(212, 'Does your body feel heavy?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(213, 'Is your belly large and soft?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(214, 'Is your forehead oily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(215, 'Compared to others, are your upper eyelids puffy?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(216, 'Does your mouth feel sticky?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(217, 'Do you have phlegm in your throat frequently?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(218, 'Do you have a sticky and thick tongue coating?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 7),
(219, 'Do you have an oily face or nose?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 8),
(220, 'Do you get acne easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 8),
(221, 'Do you have a bitter taste in your mouth?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 8),
(222, 'Is your stool sticky or does it feel incomplete when going to the bathroom?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 8),
(223, 'Does urinating have a hot sensation or is it dark in color?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 8),
(224, 'Do you have yellow vaginal discharge?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 8),
(225, 'Is your genital region moist often?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(226, 'Do you bruise easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(227, 'Do you have spider veins on your cheeks?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(228, 'Do you have body pain?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(229, 'Is your facial completion darker than others or has brown spots?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(230, 'Do you have dark circles under your eyes?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(231, 'Do you have difficulty remembering things?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(232, 'Do you have darker lips than others?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 9),
(233, 'Do you feel like something is bothering you or making you unhappy?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(234, 'Do you feel nervous or anxious?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(235, 'Do you feel more emotional or fragile?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(236, 'Do you feel afraid or frightened?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(237, 'Do you feel full or distended around your lower ribs or breast?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(238, 'Do you sigh?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(239, 'Do you often feel like there is something stuck in your throat?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 18, 0, '', 10),
(240, 'I have tinnitus.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 21),
(241, 'I feel my hearing is declining', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 21),
(242, 'I feel heavy or dizzy in my head.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 21),
(243, 'When I change my posture, I feel very dizzy or the room is moving or spinning.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 21),
(244, 'My eyes are dry or my vision becomes unclear.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 21),
(245, 'When I stand up suddenly, I have brownout in my vision.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 21),
(246, 'My muscle spasms without intense exercise.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 22),
(247, 'I suffer lumbar strain without intense exercise.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 22),
(248, 'I feel numbness in limbs.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 22),
(249, 'My skin gets dry, cracked, scaly or tough.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 22),
(250, 'My mouth or lips are dry, and I feel thirsty soon even drinking water.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 23),
(251, 'My throat is dry, but the mouth and lips are not.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 23),
(252, 'I suffer from canker sore or tongue ulcer.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 23),
(253, 'I have malar flush.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 24),
(254, 'I feel hot sensation over the chest, palms, or soles.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 24),
(255, 'I have intermittent bodily or facial hot flushes.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 24),
(256, 'Besides the first urination after getting up, the color of my urine is dark yellow or reddish.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 25),
(257, 'I feel the volume of my urine is small.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 25),
(258, 'My stool is hard and dry.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 20, 0, '', 25),
(259, 'When I stand up suddenly, I have blackout in my vision.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 27),
(260, 'When I change my posture, I feel very dizzy or the room is moving or spinning.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 27),
(261, 'My voice is weak due to lassitude, or I feel tired and don’t want to talk.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 27),
(262, 'I feel tired and don’t want to move.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 27),
(263, 'I suffer from dyspnoea when or aggravated by lying flat.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 28),
(264, 'I feel chest tightness, which seems oppressed by something.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 28),
(265, 'I feel my breath is short or rapid, or just doing some activities, my breath becomes short or rapid.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 28),
(266, 'My breath is shallow and I need to breathe deeply to feel better.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 28),
(267, 'My muscle spasms without intense exercise.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 29),
(268, 'I feel numbness in limbs.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 29),
(269, 'I suffer lumbar strain without intense exercise.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 29),
(270, 'I feel weakness, coldness, soreness or ache in waist, knees or heels.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 29),
(271, 'I prefer to take warm or hot drinks.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 30),
(272, 'I feel uncomfortable when blown by wind.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 30),
(273, 'I am intolerant of cold or my limbs are cold, and need to wear more clothes.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 30),
(274, 'I get up in dawn because of diarrhoea.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 31),
(275, 'My stool is loose or watery.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 31),
(276, 'I have diminished sense of taste.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 31),
(277, 'I feel the volume of urine is large even without drinking much water.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 21, 0, '', 31),
(278, 'There is dull pain in my body which makes me uncomfortable.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 33),
(279, 'There is tingling pain in my body which makes me uncomfortable.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 33),
(280, 'I feel chest tightness which seems oppressed by something.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 33),
(281, 'I feel numbness in limbs.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 33),
(282, 'There is dull or pain sensation over the lateral side or costal region of my body.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 33),
(283, 'Enlarged and tortuous veins (e.g., varicose veins) can be seen over my trunk or limbs.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 33),
(284, 'My skin gets dry, cracked, scaly or tough.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 34),
(285, 'Bruise will appear on my skin without obvious causes.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 34),
(286, 'There is edema in my limbs, trunk, face or around the eyes.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 34),
(287, 'I feel heavy in my whole or lower body.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 34),
(288, 'Even with sufficient sleep time, I still feel sleepy.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 35),
(289, 'I feel tired and don’t want to move.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 35),
(290, 'I feel heavy or dizzy in my head.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 35),
(291, 'I feel there is sputum in my throat, even I am not catching a cold.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 36),
(292, 'I feel sticky in my mouth or my saliva is thick.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 36),
(293, 'My tongue coating is thick or sticky.', 0, 0, '0', '25', '100', '75', '50', NULL, NULL, NULL, 22, 0, '', 36),
(294, 'Were you energetic?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 11),
(295, 'Did you get tired easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 11),
(296, 'Did you feel in low spirits and depressed?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 11),
(297, 'Did you get tired easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 12),
(298, 'Did you experience shortness of breath?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 12),
(299, 'Did you get palpitations?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 12),
(300, 'Were you sensitive to cold and tended to wear more clothes than others?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 13),
(301, 'Did you catch colds more easily than others?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 13),
(302, 'Did you feel uncomfortable when you drank or ate something cold, or did you avoid drinking or eating cold items?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 13),
(303, 'Did the palms of your hands or soles of your feet feel hot?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 14),
(304, 'Did your eyes feel dry and you used eye drops?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 14),
(305, 'Did you often feel parched and need to drink water?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 14),
(306, 'Did you have an excessively oily forehead and/or T-zone?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 15),
(307, 'Did you have upper eyelid swelling?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 15),
(308, 'Did your mouth feel sticky?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 15),
(309, 'Did you get acne or sores easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 16),
(310, 'Did you pass sticky stools and/or feel that your bowel movement was incomplete?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 16),
(311, 'Did your urethral canal feel hot when you urinated, or did your urine have a dark color?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 16),
(312, 'Was your vaginal discharge yellowish / Was your scrotum always wet?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 17),
(313, 'Did you have a dark face or get brown spots easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 17),
(314, 'Did you get dark circles under the eyes easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 17),
(315, 'Were your lips darker, more blue or purple than usual?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 18),
(316, 'Did you easily feel anxious and worried?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 18),
(317, 'Did you feel overly sensitive, vulnerable or emotionally upset?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 18),
(318, 'Were you easily scared or frightened?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 19),
(319, 'Did you have allergies? E.g. medicine, food, odors, pollen, pet dander or during seasonal or weather change etc.', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 19),
(320, 'Did you get hives/urticaria easily?', 0, 0, '1', '2', '5', '4', '3', NULL, NULL, NULL, 19, 0, '', 19);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `questionid` bigint(20) NOT NULL,
  `answer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `customerid`, `questionid`, `answer`) VALUES
(5143, 124, 294, '3'),
(5144, 124, 295, '3'),
(5145, 124, 296, '5'),
(5146, 124, 297, '3'),
(5147, 124, 298, '1'),
(5148, 124, 299, '3'),
(5149, 124, 300, '4'),
(5150, 124, 301, '1'),
(5151, 124, 302, '2'),
(5152, 124, 303, '3'),
(5153, 124, 304, '5'),
(5154, 124, 305, '1'),
(5155, 124, 306, '2'),
(5156, 124, 307, '1'),
(5157, 124, 308, '5'),
(5158, 124, 309, '1'),
(5159, 124, 310, '4'),
(5160, 124, 311, '4'),
(5161, 124, 312, '1'),
(5162, 124, 313, '2'),
(5163, 124, 314, '3'),
(5164, 124, 315, '4'),
(5165, 124, 316, '5'),
(5166, 124, 317, '4'),
(5167, 124, 318, '1'),
(5168, 124, 319, '4'),
(5169, 124, 320, '5');

-- --------------------------------------------------------

--
-- Table structure for table `subgroup`
--

CREATE TABLE `subgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `maingroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subgroup`
--

INSERT INTO `subgroup` (`id`, `name`, `maingroupid`) VALUES
(1, 'g', 1),
(2, 'h', 3),
(3, 'tp', 4),
(4, '', 4),
(5, '', 4),
(6, 'sub2', 4),
(7, 'sub1', 5),
(8, 'sub1', 6),
(9, 'sub2', 7),
(10, 'GuiZhiTiZhi', 8),
(11, 'MaHuangTiZhi', 9),
(12, 'ChaiHuTiZhi', 10),
(13, 'DaHuangTiZhi', 11),
(14, 'HuangQiTiZhi', 12),
(15, 'ShiGaoInfo', 13),
(16, 'HuangLianTiZhi', 14),
(17, 'GanJiangInfo', 15),
(18, 'ZhiFuZiZheng', 16),
(19, 'BanXiaInfo', 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinicans`
--
ALTER TABLE `clinicans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maingroup`
--
ALTER TABLE `maingroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subgroup`
--
ALTER TABLE `subgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `clinicans`
--
ALTER TABLE `clinicans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `maingroup`
--
ALTER TABLE `maingroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5170;

--
-- AUTO_INCREMENT for table `subgroup`
--
ALTER TABLE `subgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;
