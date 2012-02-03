.class public Landroid/pim/ICalendar$Component;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# static fields
.field private static final BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final END:Ljava/lang/String; = "END"

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field public static final VALARM:Ljava/lang/String; = "VALARM"

.field public static final VCALENDAR:Ljava/lang/String; = "VCALENDAR"

.field public static final VEVENT:Ljava/lang/String; = "VEVENT"

.field public static final VFREEBUSY:Ljava/lang/String; = "VFREEBUSY"

.field public static final VJOURNAL:Ljava/lang/String; = "VJOURNAL"

.field public static final VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field public static final VTODO:Ljava/lang/String; = "VTODO"


# instance fields
.field private mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/pim/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mParent:Landroid/pim/ICalendar$Component;

.field private final mPropsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/pim/ICalendar$Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/pim/ICalendar$Component;)V
    .locals 1
    .parameter "name"
    .parameter "parent"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/pim/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    .line 85
    iput-object p1, p0, Landroid/pim/ICalendar$Component;->mName:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Landroid/pim/ICalendar$Component;->mParent:Landroid/pim/ICalendar$Component;

    .line 87
    return-void
.end method


# virtual methods
.method public addChild(Landroid/pim/ICalendar$Component;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->getOrCreateChildren()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public addProperty(Landroid/pim/ICalendar$Property;)V
    .locals 3
    .parameter "prop"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/pim/ICalendar$Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Landroid/pim/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 141
    .local v1, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Property;>;"
    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Property;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .restart local v1       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/ICalendar$Property;>;"
    iget-object v2, p0, Landroid/pim/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/ICalendar$Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;
    .locals 2
    .parameter "name"

    .prologue
    .line 173
    iget-object v1, p0, Landroid/pim/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    .local v0, props:Ljava/util/List;,"Ljava/util/List<Landroid/pim/ICalendar$Property;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 175
    :cond_0
    const/4 v1, 0x0

    .line 177
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/pim/ICalendar$Property;

    move-object v1, p0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getOrCreateChildren()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/pim/ICalendar$Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getParent()Landroid/pim/ICalendar$Component;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mParent:Landroid/pim/ICalendar$Component;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/pim/ICalendar$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Landroid/pim/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    .line 184
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter "sb"

    .prologue
    const-string v7, ":"

    const-string v6, "\n"

    .line 194
    const-string v5, "BEGIN"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v5, ":"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v5, p0, Landroid/pim/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v5, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    .local v4, propertyName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/ICalendar$Property;

    .line 202
    .local v3, property:Landroid/pim/ICalendar$Property;
    invoke-virtual {v3, p1}, Landroid/pim/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    .line 203
    const-string v5, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #property:Landroid/pim/ICalendar$Property;
    .end local v4           #propertyName:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    if-eqz v5, :cond_2

    .line 209
    iget-object v5, p0, Landroid/pim/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/ICalendar$Component;

    .line 210
    .local v0, component:Landroid/pim/ICalendar$Component;
    invoke-virtual {v0, p1}, Landroid/pim/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    .line 211
    const-string v5, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    .end local v0           #component:Landroid/pim/ICalendar$Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v5, "END"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v5, ":"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v5, p0, Landroid/pim/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    return-void
.end method
