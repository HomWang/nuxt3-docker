FROM node:17-alpine

RUN mkdir -p /usr/src/nuxt3-app
WORKDIR /usr/src/nuxt3-app
COPY package.json /usr/src/nuxt3-app/package.json
COPY . .

# 可以在docker上打包时需要放开
# RUN npm install pnpm -g
# RUN pnpm i --shamefully-hoist
# RUN pnpm run build

EXPOSE 3000 

ENTRYPOINT ["node", ".output/server/index.mjs"]