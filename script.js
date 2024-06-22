import fetch from "node-fetch";

const endpoints = [
  "https://www.bloginary.live/courses",
  "https://api.bloginary.live/api/v1/health",
];

async function pingEndpoint(url) {
  try {
    const response = await fetch(url);
    if (response.ok) {
      console.log(`Successfully pinged ${url} at ${new Date().toISOString()}`);
    } else {
      console.log(
        `Failed to ping ${url} at ${new Date().toISOString()}. Status: ${
          response.status
        }`
      );
    }
  } catch (error) {
    console.error(
      `Error pinging ${url} at ${new Date().toISOString()}:`,
      error
    );
  }
}

function pingEndpoints() {
  endpoints.forEach(pingEndpoint);
}

pingEndpoints();

setInterval(pingEndpoints, 30000);
