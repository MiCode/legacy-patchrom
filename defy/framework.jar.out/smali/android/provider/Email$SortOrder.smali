.class public interface abstract Landroid/provider/Email$SortOrder;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SortOrder"
.end annotation


# static fields
.field public static final ACCOUNT_STATUS_DEFAULT:Ljava/lang/String; = "_id ASC"

.field public static final BODYPART_DEFAULT:Ljava/lang/String; = "message_id ASC"

.field public static final FOLDER_DEFAULT:Ljava/lang/String; = "name ASC"

.field public static final INBOX_STATUS_DEFAULT:Ljava/lang/String; = "_id ASC"

.field public static final MESSAGE_DEFAULT:Ljava/lang/String; = "date_received DESC, modified DESC"

.field public static final NEW_MESSAGES_DEFAULT:Ljava/lang/String; = "_id DESC"

.field public static final SYNC_DEFAULT:Ljava/lang/String; = "modified ASC"
