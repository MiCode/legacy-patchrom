.class public final Landroid/provider/Telephony$Channels;
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
    name = "Channels"
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final IS_CHECKED:Ljava/lang/String; = "is_checked"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    const-string v0, "content://channels/mychannels"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
