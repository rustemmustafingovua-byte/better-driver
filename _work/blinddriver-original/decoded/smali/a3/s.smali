.class public final La3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:La3/s;

.field public static final d:La3/s;


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La3/s;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La3/s;-><init>(IZ)V

    sput-object v0, La3/s;->c:La3/s;

    new-instance v0, La3/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, La3/s;-><init>(IZ)V

    sput-object v0, La3/s;->d:La3/s;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La3/s;->a:I

    iput-boolean p2, p0, La3/s;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La3/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La3/s;

    iget v1, p1, La3/s;->a:I

    iget v3, p0, La3/s;->a:I

    if-ne v3, v1, :cond_3

    iget-boolean p0, p0, La3/s;->b:Z

    iget-boolean p1, p1, La3/s;->b:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, La3/s;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, La3/s;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, La3/s;->c:La3/s;

    invoke-virtual {p0, v0}, La3/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TextMotion.Static"

    return-object p0

    :cond_0
    sget-object v0, La3/s;->d:La3/s;

    invoke-virtual {p0, v0}, La3/s;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TextMotion.Animated"

    return-object p0

    :cond_1
    const-string p0, "Invalid"

    return-object p0
.end method
