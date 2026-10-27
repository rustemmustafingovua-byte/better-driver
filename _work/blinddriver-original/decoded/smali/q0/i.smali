.class public abstract Lq0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq0/g;

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lq0/g;->s:Lq0/g;

    sput-object v0, Lq0/i;->a:Lq0/g;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    double-to-float v0, v0

    sput v0, Lq0/i;->b:F

    return-void
.end method
