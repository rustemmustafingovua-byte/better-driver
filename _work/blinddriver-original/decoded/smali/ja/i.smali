.class public final Lja/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lha/s;

.field public b:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 10

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lha/s;

    new-instance v1, Le3/v;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x2

    const-class v4, Lja/i;

    const-string v5, "readIfAbsent"

    const-string v6, "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Le3/v;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v0, p1, v1}, Lha/s;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Le3/v;)V

    iput-object v0, v3, Lja/i;->a:Lha/s;

    return-void
.end method
