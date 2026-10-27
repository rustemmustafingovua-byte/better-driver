.class public final Lu/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/y0;


# static fields
.field public static final a:Lu/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu/z0;->a:Lu/z0;

    return-void
.end method


# virtual methods
.method public final a(Lf1/r;F)Lf1/r;
    .locals 4

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "invalid weight; must be greater than zero"

    invoke-static {p0}, Lv/a;->a(Ljava/lang/String;)V

    :goto_0
    new-instance p0, Lu/j0;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    move p2, v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lu/j0;-><init>(FZ)V

    invoke-interface {p1, p0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
