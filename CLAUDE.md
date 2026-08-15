---
description: Use Yarn (Berry) instead of npm, pnpm, or Bun.
globs: "*.ts, *.tsx, *.js, *.jsx, package.json"
alwaysApply: false
---

This is a Yarn Berry workspaces monorepo (`packages/*`, `apps/*`), pinned via the `packageManager` field in the root `package.json` and managed through Corepack. `nodeLinker` is set to `node-modules` in `.yarnrc.yml`, since React Native / native modules don't work with Yarn's PnP resolution.

- Use `yarn install` instead of `npm install`, `bun install`, or `pnpm install`.
- Use `yarn <script>` instead of `npm run <script>`, `bun run <script>`, or `pnpm run <script>`.
- Use `yarn workspace <name> <script>` to run a script in a specific workspace, e.g. `yarn workspace @kingstinct/react-native-activity-kit specs`.
- Local devDependency binaries (e.g. `nitrogen`, `changeset`, `biome`) can be invoked directly as `yarn <bin>`, without an `npx`/`bunx`/`dlx` prefix.
