.class public final Lcom/motorola/blur/settings/AccountSettings$AccountType;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountType"
.end annotation


# static fields
.field public static final TYPE_ACTIVESYNC:I = 0x2

.field public static final TYPE_BLUR:I = 0x5

.field public static final TYPE_FIXED_EMAIL:I = 0x1

.field public static final TYPE_OAUTH:I = 0x6

.field public static final TYPE_SNACCOUNTS:I = 0x3

.field public static final TYPE_YAHOO:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
