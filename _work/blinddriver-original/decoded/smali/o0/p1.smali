.class public abstract Lo0/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:Lu/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lq0/j;->a:F

    sput v0, Lo0/p1;->a:F

    sget v0, Lq0/p;->b:F

    sput v0, Lo0/p1;->b:F

    sget v0, Lo0/u1;->c:F

    const/4 v1, 0x0

    int-to-float v1, v1

    new-instance v2, Lu/s0;

    invoke-direct {v2, v0, v1, v0, v1}, Lu/s0;-><init>(FFFF)V

    sput-object v2, Lo0/p1;->c:Lu/s0;

    return-void
.end method
