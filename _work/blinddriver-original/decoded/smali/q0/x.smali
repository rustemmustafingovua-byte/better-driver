.class public abstract Lq0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq0/g;

.field public static final b:Lq0/g;

.field public static final c:F

.field public static final d:Lq0/g;

.field public static final e:F

.field public static final f:Lq0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lq0/g;->p:Lq0/g;

    sput-object v0, Lq0/x;->a:Lq0/g;

    sput-object v0, Lq0/x;->b:Lq0/g;

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    double-to-float v0, v0

    sput v0, Lq0/x;->c:F

    sget-object v0, Lq0/g;->t:Lq0/g;

    sput-object v0, Lq0/x;->d:Lq0/g;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v0, v0

    sput v0, Lq0/x;->e:F

    sget-object v0, Lq0/g;->q:Lq0/g;

    sput-object v0, Lq0/x;->f:Lq0/g;

    return-void
.end method
