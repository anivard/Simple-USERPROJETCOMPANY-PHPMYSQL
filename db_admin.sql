SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'Company Editor'),
(4, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `firstname`, `name`, `username`, `email`, `password`, `mobile`, `company`, `cid`,`roleid`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Antoine', 'Nivard', 'anivard', 'antoine@nivard.net', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 'Ouest Cloud', 1, 1, 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(2, 'Antoine', 'Nivard', 'anivard2', 'antoine2@nivard.net', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 'Ouest Cloud', 2, 2, 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(3, 'Antoine', 'Nivard', 'anivard3', 'antoine3@nivard.net', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 'Ouest Cloud', 3, 3, 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(4, 'Antoine', 'Nivard', 'anivard4', 'antoine4@nivard.net', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 'Ouest Cloud', 4, 4, 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--
DROP TABLE IF EXISTS `tbl_company`;
CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `typecompany` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `zipcode` tinyint(5) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `adminrepre` varchar(255) DEFAULT NULL,
  `salesrepre` varchar(255) DEFAULT NULL,
  `techrepres` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `emailcontact` varchar(255) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `tbl_company` (`id`, `companyname`, `typecompany`, `address1`, `address2`, `zipcode`, `city`, `area`, `department`,`region`, `adminrepre`,`salesrepre` ,`techrepres` ,`website`, `emailcontact`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'companyname1', 'SAS', 'address1', 'address2', '44123', 'city', 'area', 'department', 'region', 'adminrepre', 'salesrepre', 'techrepres', 'website', 'emailcontact', 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(2, 'companyname2', 'Association', 'address1', 'address2', '44123', 'city', 'area', 'department', 'region', 'adminrepre', 'salesrepre', 'techrepres', 'website', 'emailcontact', 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(3, 'companyname3', 'SA', 'address1', 'address2', '44123', 'city', 'area', 'department', 'region', 'adminrepre', 'salesrepre', 'techrepres', 'website', 'emailcontact', 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(4, 'companyname4', 'SARL', 'address1', 'address2', '44123', 'city', 'area', 'department', 'region', 'adminrepre', 'salesrepre', 'techrepres', 'website', 'emailcontact', 0, DEFAULT, DEFAULT);


DROP TABLE IF EXISTS `tbl_record`;
CREATE TABLE `tbl_record` ( 
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `offre-note` varchar(255) DEFAULT NULL,
  `OFFRE-VM` varchar(255) DEFAULT NULL,	
  `OFFRE-VM-note` varchar(255) DEFAULT NULL,	
  `OFFRE-C` varchar(255) DEFAULT NULL,
  `OFFRE-C-note` varchar(255) DEFAULT NULL,
  `OFFRE-P` varchar(255) DEFAULT NULL,		
  `OFFRE-P-note` varchar(255) DEFAULT NULL,
  `OFFRE-DB` varchar(255) DEFAULT NULL,		
  `OFFRE-DB-note` varchar(255) DEFAULT NULL,
  `OFFRE-B` varchar(255) DEFAULT NULL,		
  `OFFRE-B-note` varchar(255) DEFAULT NULL,
  `OFFRE-S3` varchar(255) DEFAULT NULL,		
  `OFFRE-S3-note` varchar(255) DEFAULT NULL,	
  `OFFRE-N` varchar(255) DEFAULT NULL,	
  `OFFRE-N-note` varchar(255) DEFAULT NULL,	
  `support-note` varchar(255) DEFAULT NULL,
  `SUPPORT-TEL` varchar(255) DEFAULT NULL,
  `SUPPORT-TEL-note` varchar(255) DEFAULT NULL,
  `SUPPORT-MAIL` varchar(255) DEFAULT NULL,
  `SUPPORT-MAIL-note` varchar(255) DEFAULT NULL,
  `SUPPORT-PORTAL` varchar(255) DEFAULT NULL,
  `SUPPORT-PORTAL-note` varchar(255) DEFAULT NULL,
  `SUPPORT-SMARTP` varchar(255) DEFAULT NULL,
  `SUPPORT-SMARTP-note` varchar(255) DEFAULT NULL,
  `SUPPORT-HOURS` varchar(255) DEFAULT NULL,
  `SUPPORT-HOURS-note` varchar(255) DEFAULT NULL,
  `SUPPORT-LOCAL` varchar(255) DEFAULT NULL,
  `SUPPORT-LOCAL-note` varchar(255) DEFAULT NULL,
  `SM-note` varchar(255) DEFAULT NULL,
  `SM-OS` varchar(255) DEFAULT NULL,
  `SM-OS-note` varchar(255) DEFAULT NULL,
  `SM-middlewareDB` varchar(255) DEFAULT NULL,
  `SM-middlewareDB-note` varchar(255) DEFAULT NULL,
  `SM-middlewareMS` varchar(255) DEFAULT NULL,
  `SM-middlewareMS-note` varchar(255) DEFAULT NULL,
  `SM-middlewareOS` varchar(255) DEFAULT NULL,
  `SM-middlewareOS-note` varchar(255) DEFAULT NULL,
  `SM-appli` varchar(255) DEFAULT NULL,
  `SM-appli-note` varchar(255) DEFAULT NULL,
  `SM-HOURS` varchar(255) DEFAULT NULL,
  `SM-HOURS-note` varchar(255) DEFAULT NULL,
  `SM-LOCAL` varchar(255) DEFAULT NULL,
  `SM-LOCAL-note` varchar(255) DEFAULT NULL,
  `ADD-note` varchar(255) DEFAULT NULL,
  `ADD-OS` varchar(255) DEFAULT NULL,
  `ADD-OS-note` varchar(255) DEFAULT NULL,
  `ADD-middelware` varchar(255) DEFAULT NULL,
  `ADD-middelware-note` varchar(255) DEFAULT NULL,
  `ADD-appli` varchar(255) DEFAULT NULL,
  `ADD-appli-note` varchar(255) DEFAULT NULL,
  `PLATE-note` varchar(255) DEFAULT NULL,
  `PLATE-HOST` varchar(255) DEFAULT NULL,
  `PLATE-HOST-note` varchar(255) DEFAULT NULL,
  `PLATE-COMPUTE` varchar(255) DEFAULT NULL,
  `PLATE-COMPUTE-note` varchar(255) DEFAULT NULL,
  `PLATE-STO` varchar(255) DEFAULT NULL,
  `PLATE-STO-note` varchar(255) DEFAULT NULL,
  `PLATE-CMP` varchar(255) DEFAULT NULL,
  `PLATE-CMP-note` varchar(255) DEFAULT NULL,
  `PLATE-LOCAL` varchar(255) DEFAULT NULL,
  `PLATE-LOCAL-note` varchar(255) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
