.class public Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
.super Ljava/lang/Object;
.source "BluetoothMAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/BluetoothMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegisteredProvider"
.end annotation


# instance fields
.field public datasourceID:Ljava/lang/String;

.field public datasourceName:Ljava/lang/String;

.field public fEnabled:Z

.field public providerID:Ljava/lang/String;

.field final synthetic this$0:Lcom/broadcom/bt/service/map/BluetoothMAP;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->this$0:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
