print('Start creating database ##########################')
db = db.getSiblingDB('fm-environments-teams-players');
db.createUser(
    {
        user: 'api_user',
        pwd:  '8nba8ZB3',
        roles: [{role: 'readWrite', db: 'fm-environments-teams-players'}],
    }
);

db = db.getSiblingDB('fm-environments-cron');
db.createUser(
    {
        user: 'api_user',
        pwd:  '8nba8ZB3',
        roles: [{role: 'readWrite', db: 'fm-environments-cron'}],
    }
);
print('End creating database ##########################')
