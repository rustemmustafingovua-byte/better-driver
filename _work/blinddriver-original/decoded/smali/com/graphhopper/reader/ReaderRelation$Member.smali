.class public Lcom/graphhopper/reader/ReaderRelation$Member;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/ReaderRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# instance fields
.field private final ref:J

.field private final role:Ljava/lang/String;

.field private final type:Lcom/graphhopper/reader/ReaderElement$Type;


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/ReaderElement$Type;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->type:Lcom/graphhopper/reader/ReaderElement$Type;

    iput-wide p2, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->ref:J

    iput-object p4, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->role:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRef()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->ref:J

    return-wide v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->role:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/graphhopper/reader/ReaderElement$Type;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->type:Lcom/graphhopper/reader/ReaderElement$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->type:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/reader/ReaderRelation$Member;->ref:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Member "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
