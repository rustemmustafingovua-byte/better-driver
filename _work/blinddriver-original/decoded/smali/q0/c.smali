.class public abstract Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq0/g;

.field public static final b:Lq0/g;

.field public static final c:Lq0/g;

.field public static final d:F

.field public static final e:Lq0/g;

.field public static final f:Lq0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, La0/e;->a:La0/d;

    sget-object v0, Lq0/g;->t:Lq0/g;

    sput-object v0, Lq0/c;->a:Lq0/g;

    sget-object v0, Lq0/g;->p:Lq0/g;

    sput-object v0, Lq0/c;->b:Lq0/g;

    sget-object v1, Lq0/g;->m:Lq0/g;

    sput-object v1, Lq0/c;->c:Lq0/g;

    sget-object v1, Lq0/y;->l:Lq0/y;

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    double-to-float v1, v1

    sput v1, Lq0/c;->d:F

    sput-object v0, Lq0/c;->e:Lq0/g;

    sget-object v0, Lq0/g;->q:Lq0/g;

    sput-object v0, Lq0/c;->f:Lq0/g;

    return-void
.end method
