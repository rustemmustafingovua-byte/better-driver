.class public final Lb0/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lb0/q1;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/q1;

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Lb0/q1;-><init>(II)V

    sput-object v0, Lb0/q1;->d:Lb0/q1;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lb0/q1;->a:I

    iput p1, p0, Lb0/q1;->b:I

    iput v1, p0, Lb0/q1;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lb0/q1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lb0/q1;

    iget v0, p1, Lb0/q1;->a:I

    iget v1, p0, Lb0/q1;->a:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lb0/q1;->b:I

    iget v1, p1, Lb0/q1;->b:I

    if-ne v0, v1, :cond_2

    iget p0, p0, Lb0/q1;->c:I

    iget p1, p1, Lb0/q1;->c:I

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lb0/q1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    iget v1, p0, Lb0/q1;->b:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lm/a;->e(III)I

    move-result v0

    iget p0, p0, Lb0/q1;->c:I

    const/16 v1, 0x745f

    invoke-static {p0, v0, v1}, Lm/a;->e(III)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyboardOptions(capitalization="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb0/q1;->a:I

    invoke-static {v1}, Lu2/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoCorrectEnabled=null, keyboardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb0/q1;->b:I

    invoke-static {v1}, Lu2/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imeAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb0/q1;->c:I

    invoke-static {p0}, Lu2/j;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", platformImeOptions=nullshowKeyboardOnFocus=null, hintLocales=null)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
