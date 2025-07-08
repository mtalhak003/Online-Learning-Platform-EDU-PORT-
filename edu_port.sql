-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2025 at 12:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edu_port`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `instructor`, `duration`, `price`, `image_url`, `created_at`, `updated_at`, `created_by`) VALUES
(8, 'WEB', 'abc', 'Lakhkar', '6', '90.00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiEjBilP-PBEbL7NAsVh5jU2PEYPgaGhh8-g&s', '2025-07-03 13:57:30', '2025-07-03 13:57:30', 8),
(9, 'web', 'web development', 'Muhammad Talha Khan', '3', '10.00', 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=500&h=300&fit=crop', '2025-07-04 02:24:40', '2025-07-07 03:16:09', 5),
(10, 'Laravel', 'Laravel is a popular open-source PHP framework used for building modern web applications. It follows the MVC (Model-View-Controller) architecture and provides an elegant syntax, making development faster and more efficient. Laravel offers powerful features like routing, authentication, database migration, Eloquent ORM, Blade templating, and RESTful APIs, making it ideal for scalable and maintainable web projects.', 'Muhammad Talha Khan', '5', '19.00', 'https://picperf.io/https://laravelnews.s3.amazonaws.com/images/laravel-featured.png', '2025-07-08 04:56:00', '2025-07-08 04:56:00', 5),
(11, 'Data Science with Python', 'Data Science with Python is a powerful combination that enables you to analyze, visualize, and extract meaningful insights from data. Python, with its rich ecosystem of libraries like NumPy, Pandas, Matplotlib, Seaborn, Scikit-learn, and TensorFlow, provides tools for every stage of the data science workflow — from data cleaning and exploration to machine learning and deployment. This approach is widely used in industries for predictive modeling, trend analysis, and decision-making, making it a key skill in today’s data-driven world.', 'Albert Cruise', '9', '60.00', 'https://miro.medium.com/v2/resize:fit:1400/1*LxP1qwPjHE1CDFmLBh3bxQ.jpeg', '2025-07-08 04:57:27', '2025-07-08 04:57:27', 5),
(12, 'React JS', 'React.js is a popular JavaScript library developed by Facebook for building fast, interactive, and scalable user interfaces, especially for single-page applications. It uses a component-based architecture and a virtual DOM to efficiently update and render UI elements. React makes it easy to build reusable UI components and manage dynamic data changes, offering seamless user experiences. With support from a large community and tools like React Router, Redux, and Hooks, React has become a top choice for modern front-end web development.', 'Muhammad Talha Khan', '4', '10.00', 'https://www.mbloging.com/_next/image?url=https%3A%2F%2Fcdn.sanity.io%2Fimages%2Fyynr1uml%2Fproduction%2Fd3f0ff2ab5398aaffb00fa0b3afcb238772f42e7-1024x576.jpg%3Fw%3D1024%26auto%3Dformat&w=3840&q=75', '2025-07-08 04:59:48', '2025-07-08 04:59:48', 5),
(13, 'Amazon FBA', 'Amazon FBA (Fulfillment by Amazon) is a service that allows sellers to store their products in Amazon’s fulfillment centers. Amazon takes care of storage, packaging, shipping, customer service, and returns on behalf of the seller. This enables businesses to scale quickly and reach millions of customers through Amazon’s global marketplace. Sellers simply send their inventory to Amazon, and the platform handles the rest—making it a popular choice for e-commerce entrepreneurs looking for a hands-off, efficient logistics solution.', 'Muhammad Talha Khan', '4.5', '34.00', 'https://m.media-amazon.com/images/I/31epF-8N9LL.png', '2025-07-08 05:01:17', '2025-07-08 05:01:17', 5);

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `enrollment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `course_id`, `progress`, `enrollment_date`, `created_at`, `updated_at`) VALUES
(9, 5, 8, 0, '2025-07-04 01:52:29', '2025-07-04 01:52:29', '2025-07-04 01:52:29');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `course_id`, `title`, `description`, `video_url`, `order`, `created_at`, `updated_at`) VALUES
(19, 8, 'Advance AI', 'Advanced Artificial Intelligence (AI) – Summary\r\n\r\nAdvanced AI refers to the development and application of intelligent systems that can perform complex tasks, reason, learn from experience, and make decisions with minimal human intervention. It builds upon the foundations of machine learning, deep learning, natural language processing, computer vision, and robotics to create more autonomous, adaptive, and human-like machines.\r\n\r\nKey components of advanced AI include:\r\n\r\nDeep Learning: Uses neural networks with multiple layers to model high-level abstractions in data, particularly effective in image and speech recognition.\r\n\r\nNatural Language Processing (NLP): Enables machines to understand, interpret, and generate human language for tasks like chatbots, translation, and sentiment analysis.\r\n\r\nReinforcement Learning: Involves agents learning optimal actions through trial and error in dynamic environments, commonly used in robotics and gaming.\r\n\r\nComputer Vision: Allows machines to interpret visual data and recognize objects, faces, scenes, and actions.\r\n\r\nGenerative AI: Creates new content such as images, text, and music by learning patterns from existing data, with applications in art, design, and content generation.\r\n\r\nEthical AI: Addresses issues like fairness, bias, transparency, and accountability to ensure responsible and safe AI deployment.\r\n\r\nAdvanced AI is driving innovation in diverse fields such as healthcare, finance, autonomous vehicles, cybersecurity, and personalized recommendations, shaping the future of technology and society.', NULL, 1, '2025-07-03 14:29:15', '2025-07-03 14:29:15'),
(20, 10, 'Introduction to Laravel & MVC Architecture', '🎓 **Lecture 1: Introduction to Laravel & MVC Architecture**\r\n\r\n---\r\n\r\n# 📌 **1. What is Laravel?**\r\n\r\nLaravel is a **popular open-source PHP web framework** designed to make web application development easier through built-in tools and an elegant syntax. It follows the **MVC (Model-View-Controller)** architectural pattern and promotes clean, maintainable, and scalable code.\r\n\r\n# ✅ **Key Features of Laravel:**\r\n\r\n* Simple routing mechanism\r\n* Eloquent ORM (Object-Relational Mapping)\r\n* Blade templating engine\r\n* Artisan command-line interface\r\n* Built-in Authentication and Authorization\r\n* RESTful controllers\r\n* Database migrations and seeders\r\n\r\n---\r\n\r\n#### 📌 **2. What is MVC Architecture?**\r\n\r\n**MVC** stands for **Model-View-Controller**, a design pattern that separates the application logic into three interconnected components.\r\n\r\n* **Model:** Manages the data and business logic (e.g., database records).\r\n* **View:** Handles the presentation and UI (e.g., HTML with Blade).\r\n* **Controller:** Processes user input, interacts with the model, and returns a view.\r\n\r\n🧠 *MVC allows better organization, testability, and scalability of your code.*\r\n\r\n---\r\n\r\n#### 📌 **3. Laravel Installation (Basic Setup)**\r\n\r\n**Requirements:**\r\n\r\n* PHP >= 8.1\r\n* Composer (Dependency Manager for PHP)\r\n* MySQL or other database\r\n* Laravel Installer or use `composer create-project`\r\n\r\n```bash\r\ncomposer create-project laravel/laravel myapp\r\ncd myapp\r\nphp artisan serve\r\n```\r\n\r\n---\r\n\r\n#### 📌 **4. Laravel Directory Structure Overview**\r\n\r\n| Folder       | Purpose                                       |\r\n| ------------ | --------------------------------------------- |\r\n| `app/`       | Application logic (models, controllers, etc.) |\r\n| `resources/` | Views, language files                         |\r\n| `routes/`    | All route definitions (`web.php`, `api.php`)  |\r\n| `public/`    | Entry point of the application (`index.php`)  |\r\n| `database/`  | Migrations, factories, seeders                |\r\n| `config/`    | Configuration files                           |\r\n| `vendor/`    | Composer packages                             |\r\n\r\n---\r\n\r\n#### 📌 **5. Serving the App Locally**\r\n\r\nRun the development server:\r\n\r\n```bash\r\nphp artisan serve\r\n```\r\n\r\nVisit [http://localhost:8000](http://localhost:8000) to see the default Laravel welcome page.\r\n\r\n---\r\n\r\n#### 📌 **6. Laravel Lifecycle Summary**\r\n\r\n1. Request hits `public/index.php`\r\n2. Bootstraps the framework\r\n3. Routes are matched in `routes/web.php`\r\n4. Controller handles logic\r\n5. Response is returned via Blade View\r\n\r\n---\r\n\r\n#### 📝 **Homework / Practice**\r\n\r\n* Install Laravel on your local machine\r\n* Explore folder structure\r\n* Create a simple route in `routes/web.php`:\r\n\r\n```php\r\nRoute::get(\'/hello\', function () {\r\n    return \'Hello, Laravel!\';\r\n});\r\n```', 'https://www.youtube.com/watch?v=cDEVWbz2PpQ', 1, '2025-07-08 05:04:27', '2025-07-08 05:04:27'),
(21, 10, 'Routing, Controllers, and Views', '🎓 Lecture 2: Laravel Routing and Controllers\r\n📌 Overview:\r\nThis lecture dives into Laravel\'s routing system and how to connect routes with controllers to manage application logic. You\'ll learn how Laravel handles HTTP requests, define various routes, create controllers, and organize your web application\'s behavior.\r\n\r\n✅ Topics Covered:\r\nWhat is Routing?\r\n\r\nHow Laravel maps URLs to functions or controllers\r\n\r\nroutes/web.php for web routes\r\n\r\nroutes/api.php for API routes\r\n\r\nDefining Basic Routes\r\n\r\nphp\r\nCopy\r\nEdit\r\nRoute::get(\'/\', function () {\r\n    return view(\'welcome\');\r\n});\r\nRoute Methods:\r\n\r\nRoute::get()\r\n\r\nRoute::post()\r\n\r\nRoute::put()\r\n\r\nRoute::delete()\r\n\r\nRoute Parameters\r\n\r\nphp\r\nCopy\r\nEdit\r\nRoute::get(\'/user/{id}\', function ($id) {\r\n    return \"User ID: \" . $id;\r\n});\r\nNamed Routes\r\n\r\nphp\r\nCopy\r\nEdit\r\nRoute::get(\'/profile\', [UserController::class, \'profile\'])->name(\'profile\');\r\nCreating Controllers\r\n\r\nbash\r\nCopy\r\nEdit\r\nphp artisan make:controller UserController\r\nUsing Controllers with Routes\r\n\r\nphp\r\nCopy\r\nEdit\r\nuse App\\Http\\Controllers\\UserController;\r\n\r\nRoute::get(\'/users\', [UserController::class, \'index\']);\r\nGrouping Routes\r\n\r\nphp\r\nCopy\r\nEdit\r\nRoute::prefix(\'admin\')->group(function () {\r\n    Route::get(\'/dashboard\', [AdminController::class, \'dashboard\']);\r\n});\r\n📝 Practice Task:\r\nCreate a route that displays a message\r\n\r\nCreate a controller named PageController\r\n\r\nConnect a route to PageController@index\r\n\r\nTest dynamic route parameters', 'https://www.youtube.com/watch?v=v5HRhKjUwJk', 2, '2025-07-08 05:05:52', '2025-07-08 05:05:52'),
(22, 8, 'BASICS of HTML', 'HTML (HyperText Markup Language) is the standard language used to create and structure content on the web. It defines the basic layout of web pages using elements like headings, paragraphs, links, images, and forms. HTML provides the foundation for websites, allowing browsers to display text, media, and interactive elements in a readable format.', 'https://www.youtube.com/watch?v=UB1O30fR-EE', 2, '2025-07-08 05:07:27', '2025-07-08 05:07:27'),
(23, 9, 'Advance web development', 'Advanced Web Development focuses on building dynamic, responsive, and high-performance web applications using modern tools and frameworks. It goes beyond basic HTML, CSS, and JavaScript by incorporating technologies like React.js, Node.js, Laravel, APIs, databases, authentication, deployment, and performance optimization. Developers learn to manage both frontend and backend logic, implement security best practices, and create scalable solutions that offer seamless user experiences across devices.', 'https://www.youtube.com/watch?v=voXYG17rhQA', 1, '2025-07-08 05:09:08', '2025-07-08 05:09:08'),
(24, 11, 'Introduction', 'Python is a high-level, versatile, and easy-to-learn programming language widely used in web development, data science, automation, artificial intelligence, and more. Known for its clean syntax and readability, Python allows developers to write fewer lines of code to accomplish tasks efficiently. With powerful libraries like NumPy, pandas, Django, Flask, and TensorFlow, Python is an ideal choice for both beginners and professionals across a wide range of applications.', 'https://www.youtube.com/watch?v=t2_Q2BRzeEE&list=PLGjplNEQ1it8-0CmoljS5yeV-GlKSUEt0', 1, '2025-07-08 05:10:40', '2025-07-08 05:10:40'),
(25, 12, 'React', 'react course', 'https://www.youtube.com/watch?v=-mJFZp84TIY', 1, '2025-07-08 05:11:22', '2025-07-08 05:11:22');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_01_01_000001_create_courses_table', 1),
(5, '2024_01_01_000002_create_enrollments_table', 1),
(6, '2025_07_02_160146_create_lectures_table', 1),
(7, '2025_07_02_175105_create_quizzes_table', 1),
(8, '2025_07_02_175116_create_quiz_questions_table', 1),
(9, '2025_07_02_175146_create_quiz_attempts_table', 1),
(10, '2025_07_02_180722_add_role_to_users_table', 1),
(11, '2025_07_02_180847_add_created_by_to_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lecture_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `time_limit` int(11) NOT NULL DEFAULT 10,
  `max_attempts` int(11) NOT NULL DEFAULT 3,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `lecture_id`, `title`, `description`, `time_limit`, `max_attempts`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 25, 'QUIZ-1', 'Attempt each qs', 10, 3, 1, '2025-07-08 05:15:30', '2025-07-08 05:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`answers`)),
  `score` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_answer` enum('a','b','c','d') NOT NULL,
  `explanation` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `explanation`, `order`, `created_at`, `updated_at`) VALUES
(2, 2, 'What is the primary purpose of React.js?', 'To define the backend structure of a web application', 'To handle database management and queries', 'To build user interfaces using components', 'To style web pages using CSS pre-processors', 'c', NULL, 0, '2025-07-08 05:15:30', '2025-07-08 05:15:30'),
(3, 2, 'Which of the following is used to pass data from a parent component to a child component in React?', 'State', 'Props', 'Redux', 'Context API', 'b', NULL, 0, '2025-07-08 05:15:30', '2025-07-08 05:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('t8ZDeKq4SNzUbzrKWzs0sizRXn422BBQL7DilI1I', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmpDOTg3bkt1WEtqU3Z5UTFIYWVKazZPWFFaWkUyaXdKTGI1VmIzeCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NvdXJzZXMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NvdXJzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751966855),
('vOjbu8OqCR5gbypkY0b74wp3AInrl3QCYEKhBApA', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVZ2eUVsTkxkb0E1MHRMWFZPS0l2VU9UQWduNjY3MmFCVUlIaWx3MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb3Vyc2VzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1751969755);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('student','teacher','admin') NOT NULL DEFAULT 'student',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Student User', 'student@example.com', 'student', NULL, '$2y$12$HP.3nULZb5G6wUvgeUTpeebuybZS8FCOcjihous6Ngn9uc0uWvNvG', NULL, '2025-07-02 14:26:47', '2025-07-02 14:26:47'),
(2, 'Teacher User', 'teacher@example.com', 'teacher', NULL, '$2y$12$a19ikZijESFFSVq/pUuKLe2AnP2yrSWJ77Bh.7h.XxQcLj4.hqVxi', NULL, '2025-07-02 14:26:48', '2025-07-02 14:26:48'),
(3, 'John Smith', 'instructor@example.com', 'teacher', NULL, '$2y$12$xLDRG3JiMZodJfvj2ACneusWA7evNCa7DaZS9pAeR0ON9LONHLIH2', NULL, '2025-07-02 14:26:48', '2025-07-02 14:26:48'),
(4, 'Muhammad Talha Khan', 'teacher1@example.com', 'teacher', NULL, '$2y$12$OQ8gNY1GOkXzVB/lyCDKp.IN1wMphz57Th1dw0M5J4zqPnzihXzAC', NULL, '2025-07-02 14:30:11', '2025-07-02 14:30:11'),
(5, 'Muhammad Talha Khan', 'teacher2@example.com', 'teacher', NULL, '$2y$12$3xS9nXIQnvxUHmC7vokmSeJTOJmkpXS5G9FsjsWNgJPiDAgPbdu1y', NULL, '2025-07-02 14:51:37', '2025-07-02 14:51:37'),
(6, 'Cookie', 'teacher3@example.com', 'teacher', NULL, '$2y$12$Y.fVPfd6XRhPzF/gMHkB/eM3R95MuBgHaRxnWNdu5gOvbvObX6OjW', NULL, '2025-07-03 02:18:05', '2025-07-03 02:18:05'),
(7, 'Admin User', 'admin@example.com', 'admin', NULL, '$2y$12$mHkOyT53fquTQ1mlEd/nYOmcxkMnGle79k4iaROKEG1j7Ryshqiiy', NULL, '2025-07-03 13:51:09', '2025-07-03 13:51:09'),
(8, 'Lakhkar', 'teacher123@example.com', 'teacher', NULL, '$2y$12$89WxGEVK2s2A2d2sAi34..rfnIhMFCFVe6eahMfQfrXGFRurc4Eau', NULL, '2025-07-03 13:55:53', '2025-07-03 13:55:53'),
(9, 'maaz', 'maaz@gmail.com', 'student', NULL, '$2y$12$YSQwysm0EDf0.EhnTXi.7eRfiQi4fIrR10Qu6SqH7O.F5V3frHPyS', NULL, '2025-07-04 00:54:11', '2025-07-04 00:54:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_created_by_foreign` (`created_by`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrollments_user_id_course_id_unique` (`user_id`,`course_id`),
  ADD KEY `enrollments_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectures_course_id_foreign` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_lecture_id_foreign` (`lecture_id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_attempts_quiz_id_foreign` (`quiz_id`),
  ADD KEY `quiz_attempts_user_id_foreign` (`user_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_lecture_id_foreign` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_attempts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
