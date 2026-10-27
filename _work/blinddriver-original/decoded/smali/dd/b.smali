.class public final Ldd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/a;


# instance fields
.field public final a:Lu8/k;

.field public b:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/b;->Companion:Ldd/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Ldd/b;->a:Lu8/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, -0x3d600000    # -80.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v0, v1}, Lg6/c1;->e(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/Float;

    return-void
.end method
