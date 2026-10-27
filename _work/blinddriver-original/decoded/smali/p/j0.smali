.class public final Lp/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/e1;


# static fields
.field public static final a:Lp/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/j0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/j0;->a:Lp/j0;

    return-void
.end method


# virtual methods
.method public final a(Ls/i;)Le2/j;
    .locals 0

    new-instance p0, Lp/i0;

    invoke-direct {p0, p1}, Lp/i0;-><init>(Ls/i;)V

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

.method public final hashCode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
