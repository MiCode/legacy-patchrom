.class Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;
.super Lcom/android/internal/location/DummyLocationProvider;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwDummyLocationProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->this$0:Lcom/vzw/location/VzwLocationManager;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    return-void
.end method


# virtual methods
.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 1
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    return v0
.end method
