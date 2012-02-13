.class public Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LegalReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActivityInstance"
.end annotation


# static fields
.field private static sActivity:Lcom/motorola/blur/setup/LegalReaderActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;->sActivity:Lcom/motorola/blur/setup/LegalReaderActivity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/blur/setup/LegalReaderActivity;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;->sActivity:Lcom/motorola/blur/setup/LegalReaderActivity;

    return-object v0
.end method

.method public static setInstance(Lcom/motorola/blur/setup/LegalReaderActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 61
    sput-object p0, Lcom/motorola/blur/setup/LegalReaderActivity$ActivityInstance;->sActivity:Lcom/motorola/blur/setup/LegalReaderActivity;

    .line 62
    return-void
.end method
