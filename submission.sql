
-- To figure out forum_posts table structure:
SELECT * FROM forum_posts LIMIT 5;

-- Find the forum posts that happened in April 2048 and mention Emptystack:
SELECT id, title, author, content FROM forum_posts WHERE date < '2048-05-01' AND date >= '2048-04-01' AND content ILIKE '%emptystack%';
-- outputs two posts. Only one that mentions their father. That post (id: nbZY_) was authored by: smart-money-44

-- To figure out forum_accounts table structure:
SELECT * FROM forum_accounts LIMIT 5;

-- Find forum accounts that have the username: smart-money-44
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
-- outputs one person: Brad Steele

-- Find forum accounts that have the last name Steele:
SELECT * FROM forum_accounts WHERE last_name ILIKE 'Steele';
-- outputs two accounts other than Brad: 
    -- Andrew Steele username: sharp-engine-57
    -- Kevin Steele username: stinky-tofu-98

-- To figure out emptystack_accounts table structure:
SELECT * FROM emptystack_accounts LIMIT 5;

-- Find emptystack accounts where the last_name is Steele:
SELECT * FROM emptystack_accounts WHERE last_name ILIKE 'Steele';
-- outputs two accounts: 
    -- Andrew Steele username: triple-cart-38, password: password456
    -- Lance Steele username: lance-main-11, password: password789

-- So we go with Andrew Steele. UN: triple-cart-38, PW: password456


SELECT * FROM emptystack_messages LIMIT 5;

SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%' OR subject ILIKE '%taxi%';
-- outputs one message - subject: Project TAXI, to: triple-cart-38, from: your-boss-99

SELECT * from emptystack_accounts WHERE username = 'your-boss-99';
-- outputs one user - Skylar Singer with password: notagaincarter

SELECT * FROM emptystack_projects where code ='TAXI';
-- outputs ID: DczE0v2b

-- result:
    -- node mainframe -stop  
    -- WARNING: admin access required. Unauthorized access will be logged.
    -- Username: your-boss-99
    -- Password: notagaincarter
    -- Welcome, your-boss-99.
    -- Project ID: DczE0v2b
    -- Initiating project shutdown sequence...
    -- 5...
    -- 4...
    -- 3...
    -- 2...
    -- 1...
    -- Project shutdown complete.