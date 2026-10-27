.class public final Lo0/v1;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# static fields
.field public static final a:Lo0/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/v1;

    invoke-direct {v0}, Lo0/v1;-><init>()V

    sput-object v0, Lo0/v1;->a:Lo0/v1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 0

    new-instance p0, Lo0/x1;

    invoke-direct {p0}, Lf1/q;-><init>()V

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

    check-cast p1, Lo0/x1;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
