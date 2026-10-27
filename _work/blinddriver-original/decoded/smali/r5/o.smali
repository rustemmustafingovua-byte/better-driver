.class public final Lr5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr5/o;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr5/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lr5/o;-><init>(II)V

    sput-object v0, Lr5/o;->c:Lr5/o;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr5/o;->a:I

    iput p2, p0, Lr5/o;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lr5/o;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lr5/o;

    iget v2, p1, Lr5/o;->a:I

    iget v3, p0, Lr5/o;->a:I

    if-ne v2, v3, :cond_3

    iget p1, p1, Lr5/o;->b:I

    iget p0, p0, Lr5/o;->b:I

    if-ne p1, p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lr5/o;->b:I

    iget p0, p0, Lr5/o;->a:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lr5/o;->c:Lr5/o;

    if-ne p0, v0, :cond_0

    const-string p0, "EMPTY"

    return-object p0

    :cond_0
    iget v0, p0, Lr5/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lr5/o;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(enabled=0x%x,disabled=0x%x)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
