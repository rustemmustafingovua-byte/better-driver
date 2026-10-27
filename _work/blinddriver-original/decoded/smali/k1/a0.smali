.class public final Lk1/a0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# static fields
.field public static final a:Lk1/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk1/a0;

    invoke-direct {v0}, Lk1/a0;-><init>()V

    sput-object v0, Lk1/a0;->a:Lk1/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance p0, Lk1/b0;

    const/4 v0, 0x0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lk1/b0;-><init>(IILi9/e;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic f(Lf1/q;)V
    .locals 0

    check-cast p1, Lk1/b0;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x67a7b089

    return p0
.end method
