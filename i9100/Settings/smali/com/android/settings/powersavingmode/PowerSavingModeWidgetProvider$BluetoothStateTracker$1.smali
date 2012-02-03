.class Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 367
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 370
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method
