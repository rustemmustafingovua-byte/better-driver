.class public Lcom/graphhopper/jackson/Jackson;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initObjectMapper(Lb6/c0;)Lb6/c0;
    .locals 3

    new-instance v0, Lcom/graphhopper/jackson/GraphHopperModule;

    invoke-direct {v0}, Lcom/graphhopper/jackson/GraphHopperModule;-><init>()V

    invoke-virtual {p0, v0}, Lb6/c0;->s(Lb6/a0;)V

    new-instance v0, Lk5/a;

    invoke-direct {v0}, Lk5/a;-><init>()V

    invoke-virtual {p0, v0}, Lb6/c0;->s(Lb6/a0;)V

    sget-object v0, Lb6/n0;->l:Lb6/l0;

    invoke-virtual {p0, v0}, Lb6/c0;->t(Lb6/o0;)V

    sget-object v0, Lr5/a0;->p:Lr5/a0;

    new-instance v0, Lr5/a0;

    sget-object v1, Lr5/z;->m:Lr5/z;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v1, p0, Lb6/c0;->o:La6/n;

    iput-object v0, v1, La6/n;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public static newObjectMapper()Lb6/c0;
    .locals 1

    new-instance v0, Lb6/c0;

    invoke-direct {v0}, Lb6/c0;-><init>()V

    invoke-static {v0}, Lcom/graphhopper/jackson/Jackson;->initObjectMapper(Lb6/c0;)Lb6/c0;

    move-result-object v0

    return-object v0
.end method
