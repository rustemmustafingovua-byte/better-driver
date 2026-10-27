.class public abstract Lq0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/d;

.field public static final b:La0/d;

.field public static final c:La0/d;

.field public static final d:La0/d;

.field public static final e:La0/d;

.field public static final f:La0/d;

.field public static final g:La0/d;

.field public static final h:La0/d;

.field public static final i:La0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    double-to-float v0, v0

    invoke-static {v0}, La0/e;->a(F)La0/d;

    move-result-object v1

    sput-object v1, Lq0/z;->a:La0/d;

    const-wide/high16 v1, 0x403c000000000000L    # 28.0

    double-to-float v1, v1

    invoke-static {v1}, La0/e;->a(F)La0/d;

    move-result-object v2

    sput-object v2, Lq0/z;->b:La0/d;

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    double-to-float v2, v2

    invoke-static {v2}, La0/e;->a(F)La0/d;

    move-result-object v3

    sput-object v3, Lq0/z;->c:La0/d;

    const-wide/16 v3, 0x0

    double-to-float v3, v3

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    double-to-float v4, v4

    invoke-static {v4}, La0/e;->a(F)La0/d;

    move-result-object v5

    sput-object v5, Lq0/z;->d:La0/d;

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    double-to-float v5, v5

    invoke-static {v5}, La0/e;->a(F)La0/d;

    move-result-object v6

    sput-object v6, Lq0/z;->e:La0/d;

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    double-to-float v6, v6

    invoke-static {v6}, La0/e;->a(F)La0/d;

    move-result-object v7

    sput-object v7, Lq0/z;->f:La0/d;

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    double-to-float v7, v7

    invoke-static {v7}, La0/e;->a(F)La0/d;

    move-result-object v8

    sput-object v8, Lq0/z;->g:La0/d;

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    double-to-float v8, v8

    invoke-static {v8}, La0/e;->a(F)La0/d;

    move-result-object v9

    sput-object v9, Lq0/z;->h:La0/d;

    new-instance v9, La0/b;

    invoke-direct {v9, v0}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v1}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v2}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v4}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v5}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v6}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v7}, La0/b;-><init>(F)V

    new-instance v0, La0/b;

    invoke-direct {v0, v3}, La0/b;-><init>(F)V

    sput-object v0, Lq0/z;->i:La0/b;

    new-instance v0, La0/b;

    invoke-direct {v0, v8}, La0/b;-><init>(F)V

    return-void
.end method
