.class public abstract Lo0/p3;
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
    .locals 2

    sget-object v0, Lq0/z;->d:La0/d;

    sput-object v0, Lo0/p3;->a:La0/d;

    sget-object v0, Lq0/z;->h:La0/d;

    sput-object v0, Lo0/p3;->b:La0/d;

    sget-object v0, Lq0/z;->g:La0/d;

    sput-object v0, Lo0/p3;->c:La0/d;

    sget-object v0, Lq0/z;->e:La0/d;

    sput-object v0, Lo0/p3;->d:La0/d;

    sget-object v0, Lq0/z;->f:La0/d;

    sput-object v0, Lo0/p3;->e:La0/d;

    sget-object v0, Lq0/z;->b:La0/d;

    sput-object v0, Lo0/p3;->f:La0/d;

    sget-object v0, Lq0/z;->c:La0/d;

    sput-object v0, Lo0/p3;->g:La0/d;

    sget-object v0, Lq0/z;->a:La0/d;

    sput-object v0, Lo0/p3;->h:La0/d;

    sget-object v0, Lq0/z;->i:La0/b;

    sput-object v0, Lo0/p3;->i:La0/b;

    const/16 v0, 0x64

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "The percent should be in the range of [0, 100]"

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
