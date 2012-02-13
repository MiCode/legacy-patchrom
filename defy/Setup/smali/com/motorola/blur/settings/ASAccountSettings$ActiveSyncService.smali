.class Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;
.super Ljava/lang/Object;
.source "ASAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/ASAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveSyncService"
.end annotation


# instance fields
.field capabilityId:I

.field prettyNameId:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "id"
    .parameter "nameId"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;->capabilityId:I

    .line 66
    iput p2, p0, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;->prettyNameId:I

    .line 67
    return-void
.end method
