.class public final Landroid/provider/Telephony$BuiltInAppCarriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuiltInAppCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NAME:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2065
    const-string v0, "content://builtinapp_data/app_carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$BuiltInAppCarriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
