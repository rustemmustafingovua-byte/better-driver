.class public final Lmb/z5;
.super Lmb/m3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lmb/x0;

.field public f:Lmb/g3;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/z5;->c:Ljava/lang/String;

    iput p3, p0, Lmb/z5;->d:I

    iput-object p4, p0, Lmb/z5;->e:Lmb/x0;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/z5;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmb/z5;->d:I

    if-ge v1, v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmb/z5;->e:Lmb/x0;

    if-eqz p0, :cond_1

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
