# pesen-makan
a full-stack simulation of food ordering app



docker exec -it makan_db psql -U makanuser -d makan_db

# Food Order Simulation API

## Customer Endpoints

### Customer Management
- **POST /api/customers**: Create a new customer (for simulation purposes).
- **GET /api/customers/{customerId}**: Get details of a specific customer.
- **PUT /api/customers/{customerId}**: Update details of a specific customer.

## Restaurant Endpoints

### Restaurant Information
- **GET /api/restaurants**: Get a list of all restaurants.
- **GET /api/restaurants/{restaurantId}**: Get details of a specific restaurant.

### Restaurant Menu
- **GET /api/restaurants/{restaurantId}/menu**: Get the menu of a specific restaurant.

## Order Endpoints

### Place and Manage Orders
- **POST /api/orders**: Place a new order.
- **GET /api/orders/{orderId}**: Get details of a specific order.
- **GET /api/customers/{customerId}/orders**: Get a list of all orders placed by a specific customer.
- **PUT /api/orders/{orderId}/cancel**: Cancel an order.

### Order Status and Tracking
- **GET /api/orders/{orderId}/status**: Get the current status of a specific order.
- **GET /api/orders/{orderId}/track**: Get real-time tracking information for a specific order.

## Driver Endpoints

### Driver Management
- **POST /api/drivers**: Create a new driver (for simulation purposes).
- **GET /api/drivers/{driverId}**: Get details of a specific driver.
- **PUT /api/drivers/{driverId}**: Update details of a specific driver.

### Driver Orders
- **GET /api/drivers/{driverId}/orders**: Get a list of all orders assigned to a specific driver.
- **PUT /api/orders/{orderId}/status**: Update the status of an order (e.g., from `out_for_delivery` to `delivered`).
