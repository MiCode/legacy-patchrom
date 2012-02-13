.class public final Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
.super Ljava/lang/Object;
.source "XMPPropertyImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/properties/XMPProperty;


# instance fields
.field private language:Ljava/lang/String;

.field private options:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 3

    .prologue
    :try_start_0
    new-instance v1, Lcom/motorola/android/xmp/options/PropertyOptions;

    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->options:I

    invoke-direct {v1, v2}, Lcom/motorola/android/xmp/options/PropertyOptions;-><init>(I)V
    :try_end_0
    .catch Lcom/motorola/android/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, exp:Lcom/motorola/android/xmp/XMPException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->value:Ljava/lang/String;

    return-object v0
.end method
