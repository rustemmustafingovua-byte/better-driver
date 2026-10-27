.class public abstract Lf2/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lf2/d3;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lx9/j0;
    .locals 9

    sget-object v1, Lf2/d3;->a:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "animator_duration_scale"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v0, -0x1

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lf2/c3;

    invoke-direct {v5, v6, v0}, Lf2/c3;-><init>(Lw9/e;Landroid/os/Handler;)V

    new-instance v2, Lf2/b3;

    const/4 v8, 0x0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lf2/b3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lf2/c3;Lw9/e;Landroid/content/Context;Ly8/c;)V

    new-instance p0, Lc5/n;

    invoke-direct {p0, v2}, Lc5/n;-><init>(Li9/e;)V

    new-instance v0, Lz9/d;

    invoke-static {}, Lu9/v;->c()Lu9/l1;

    move-result-object v2

    sget-object v3, Lu9/e0;->a:Lba/e;

    sget-object v3, Lz9/n;->a:Lv9/d;

    invoke-static {v2, v3}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object v2

    invoke-direct {v0, v2}, Lz9/d;-><init>(Ly8/h;)V

    new-instance v2, Lx9/i0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "animator_duration_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lx9/c0;->k(Lc5/n;Lz9/d;Lx9/i0;Ljava/lang/Float;)Lx9/y;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v0, Lx9/j0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public static final b(Landroid/view/View;)Lr0/u;
    .locals 1

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lr0/u;

    if-eqz v0, :cond_0

    check-cast p0, Lr0/u;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
