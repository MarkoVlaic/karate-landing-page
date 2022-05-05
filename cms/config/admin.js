module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '6590dfb493d0e1cb1ce165b9f9057578'),
  },
});
