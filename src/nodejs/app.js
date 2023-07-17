const Koa = require('koa');
const app = module.exports = new Koa();
const prometheus = require('@echo-health/koa-prometheus-exporter');
const { KoaReqLogger } = require('koa-req-logger');

app.use(prometheus.middleware({headerBlacklist: ["cache-control"]}))

const logger = new KoaReqLogger();
app.use(logger.getMiddleware());

app.use(async function(ctx) {
  ctx.body = 'Hello World';
});

if (!module.parent) app.listen(3000);