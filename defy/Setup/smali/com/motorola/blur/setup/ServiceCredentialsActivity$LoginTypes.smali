.class final Lcom/motorola/blur/setup/ServiceCredentialsActivity$LoginTypes;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoginTypes"
.end annotation


# static fields
.field public static final ACTIVESYNC:I = 0x4

.field public static final BLUR_OAUTH:I = 0x9

.field public static final BLUR_SERVICE_AUTH_ACCOUNT:I = 0x8

.field public static final EMAIL_FIXED_IMAP:I = 0x6

.field public static final EMAIL_FIXED_POP:I = 0x7

.field public static final EMAIL_NOT_RESOLVED:I = 0x1

.field public static final EMAIL_RESOLVED_IMAP:I = 0x3

.field public static final EMAIL_RESOLVED_POP:I = 0x2

.field public static final GOOGLE:I = 0x5

.field public static final UNKNOWN:I = 0x0

.field public static final YAHOO:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
