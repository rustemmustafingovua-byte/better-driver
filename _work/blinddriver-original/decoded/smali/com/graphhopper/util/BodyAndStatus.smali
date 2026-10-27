.class public Lcom/graphhopper/util/BodyAndStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final body:Lb6/q;

.field private final status:I


# direct methods
.method public constructor <init>(Lb6/q;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/util/BodyAndStatus;->body:Lb6/q;

    iput p2, p0, Lcom/graphhopper/util/BodyAndStatus;->status:I

    return-void
.end method


# virtual methods
.method public getBody()Lb6/q;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/BodyAndStatus;->body:Lb6/q;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/BodyAndStatus;->status:I

    return p0
.end method
