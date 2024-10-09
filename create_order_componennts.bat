@echo off

:: Orders Module Components
set components=accept-order add-order cancel-order delete-order fraud-order get-orders get-order-statuses get-products get-promotions order-fraud-check pending-order

for %%c in (%components%) do (
    echo Creating component: %%c...
    ng generate component orders/%%c
)

echo Order module components created successfully!
