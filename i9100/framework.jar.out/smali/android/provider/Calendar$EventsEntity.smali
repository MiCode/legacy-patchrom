.class public final Landroid/provider/Calendar$EventsEntity;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$EventsColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventsEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Calendar$EventsEntity$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 605
    const-string v0, "content://com.android.calendar/event_entities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    return-void
.end method

.method public static newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;
    .locals 1
    .parameter "cursor"
    .parameter "provider"

    .prologue
    .line 614
    new-instance v0, Landroid/provider/Calendar$EventsEntity$EntityIteratorImpl;

    invoke-direct {v0, p0, p1}, Landroid/provider/Calendar$EventsEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V

    return-object v0
.end method

.method public static newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;
    .locals 1
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    .line 609
    new-instance v0, Landroid/provider/Calendar$EventsEntity$EntityIteratorImpl;

    invoke-direct {v0, p0, p1}, Landroid/provider/Calendar$EventsEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    return-object v0
.end method
