.class public final Landroid/provider/Calendar$Attendees;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$AttendeesColumns;
.implements Landroid/provider/Calendar$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attendees"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 355
    const-string v0, "content://com.android.calendar/attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
