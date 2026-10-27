.class public final Lb0/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lb0/p1;


# instance fields
.field public final a:Li9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/p1;

    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2}, Lb0/p1;-><init>(Li9/c;I)V

    sput-object v0, Lb0/p1;->b:Lb0/p1;

    return-void
.end method

.method public constructor <init>(Li9/c;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/p1;->a:Li9/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb0/p1;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lb0/p1;

    iget-object p0, p0, Lb0/p1;->a:Li9/c;

    iget-object p1, p1, Lb0/p1;->a:Li9/c;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lb0/p1;->a:Li9/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method
