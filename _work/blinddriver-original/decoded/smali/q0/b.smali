.class public abstract Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:Lq0/y;

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v0, v0

    sput v0, Lq0/b;->a:F

    sget-object v0, Lq0/y;->n:Lq0/y;

    sput-object v0, Lq0/b;->b:Lq0/y;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    double-to-float v0, v0

    sput v0, Lq0/b;->c:F

    return-void
.end method
