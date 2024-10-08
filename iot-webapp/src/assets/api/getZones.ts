import doRequest from "./doRequest";

export default async function getZones() {
    const response = await doRequest('/zones', 'GET', null);
    let zones = null;
    if (response && response.ok) {
        zones = await response.json();
    }
    return zones;
}