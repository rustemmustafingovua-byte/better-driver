.class final Ldadb/Packet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arg:I

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/Packet;->id:Ljava/lang/String;

    iput p2, p0, Ldadb/Packet;->arg:I

    return-void
.end method


# virtual methods
.method public final getArg()I
    .locals 0

    iget p0, p0, Ldadb/Packet;->arg:I

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldadb/Packet;->id:Ljava/lang/String;

    return-object p0
.end method
