.class public final Lic/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lpb/a;


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpb/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lpb/a;-><init>(DD)V

    iput-object v0, p0, Lic/c;->a:Lpb/a;

    return-void
.end method


# virtual methods
.method public final a(Lic/c;)Z
    .locals 4

    iget-object p0, p0, Lic/c;->a:Lpb/a;

    iget-wide v0, p0, Lpb/a;->l:D

    iget-object p1, p1, Lic/c;->a:Lpb/a;

    iget-wide v2, p1, Lpb/a;->l:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lpb/a;->m:D

    iget-wide p0, p1, Lpb/a;->m:D

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lic/a;)Z
    .locals 9

    invoke-virtual {p1}, Lic/a;->b()Lic/c;

    move-result-object v0

    iget-object p1, p1, Lic/a;->b:Lic/c;

    iget-object v0, v0, Lic/c;->a:Lpb/a;

    iget-wide v1, v0, Lpb/a;->l:D

    iget-object p0, p0, Lic/c;->a:Lpb/a;

    iget-wide v3, p0, Lpb/a;->l:D

    sub-double/2addr v1, v3

    iget-object p1, p1, Lic/c;->a:Lpb/a;

    iget-wide v5, p1, Lpb/a;->m:D

    iget-wide v7, p0, Lpb/a;->m:D

    sub-double/2addr v5, v7

    mul-double/2addr v5, v1

    iget-wide v0, v0, Lpb/a;->m:D

    sub-double/2addr v0, v7

    iget-wide p0, p1, Lpb/a;->l:D

    sub-double/2addr p0, v3

    mul-double/2addr p0, v0

    sub-double/2addr v5, p0

    const-wide/16 p0, 0x0

    cmpl-double p0, v5, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POINT ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lic/c;->a:Lpb/a;

    iget-wide v1, p0, Lpb/a;->l:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lpb/a;->m:D

    const-string p0, ")"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
