.class public Lcom/motorola/android/internal/util/ContextUtil;
.super Ljava/lang/Object;
.source "ContextUtil.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/util/ContextUtil;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/internal/util/ContextUtil;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/app/Application;)V
    .locals 0
    .parameter "application"

    .prologue
    sput-object p0, Lcom/motorola/android/internal/util/ContextUtil;->sContext:Landroid/content/Context;

    return-void
.end method
