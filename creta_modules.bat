@echo off
set modules=client billing support domains orders

for %%m in (%modules%) do (
    echo Creating module: %%m
    ng generate module %%m --routing
)

for %%m in (client) do (
    ng generate component %%m/client-list
    ng generate component %%m/client-detail
)

for %%m in (billing) do (
    ng generate component %%m/invoice-list
    ng generate component %%m/invoice-detail
)

for %%m in (support) do (
    ng generate component %%m/ticket-list
    ng generate component %%m/ticket-detail
)

for %%m in (domains) do (
    ng generate component %%m/domain-list
    ng generate component %%m/domain-detail
)

for %%m in (orders) do (
    ng generate component %%m/order-list
    ng generate component %%m/order-detail
)

echo Angular structure for WHMCS API created successfully!
