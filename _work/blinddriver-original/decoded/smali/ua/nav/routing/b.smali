.class public final Lua/nav/routing/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/z;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lha/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/b;->Companion:Lid/z;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "recent_places"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lua/nav/routing/b;->a:Landroid/content/SharedPreferences;

    sget-object p1, Lua/nav/routing/RecentPlaces$Item;->Companion:Lua/nav/routing/RecentPlaces$Item$Companion;

    invoke-virtual {p1}, Lua/nav/routing/RecentPlaces$Item$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p1

    invoke-static {p1}, Ly4/s;->a(Lkotlinx/serialization/KSerializer;)Lha/c;

    move-result-object p1

    iput-object p1, p0, Lua/nav/routing/b;->b:Lha/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    const-string v0, "[]"

    :try_start_0
    sget-object v1, Lgd/h;->c:Lia/r;

    iget-object v2, p0, Lua/nav/routing/b;->b:Lha/c;

    iget-object p0, p0, Lua/nav/routing/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "items"

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_1
    instance-of v0, p0, Lt8/l;

    if-eqz v0, :cond_1

    sget-object p0, Lu8/r;->l:Lu8/r;

    :cond_1
    check-cast p0, Ljava/util/List;

    return-object p0
.end method
