.class public final Lr0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/u2;


# instance fields
.field public final a:Lr0/e1;


# direct methods
.method public constructor <init>(Lr0/e1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/h0;->a:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Lr0/j1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr0/h0;->a:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lr0/h0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr0/h0;

    iget-object p0, p0, Lr0/h0;->a:Lr0/e1;

    iget-object p1, p1, Lr0/h0;->a:Lr0/e1;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lr0/h0;->a:Lr0/e1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicValueHolder(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lr0/h0;->a:Lr0/e1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
