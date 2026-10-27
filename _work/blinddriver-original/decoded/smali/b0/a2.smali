.class public final enum Lb0/a2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic m:[Lb0/a2;


# instance fields
.field public final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lb0/a2;

    const v4, 0x1040003

    const v5, 0x1010311

    const-string v1, "Cut"

    const/4 v2, 0x0

    sget-object v3, Le0/e;->a:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lb0/a2;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    new-instance v1, Lb0/a2;

    const v5, 0x1040001

    const v6, 0x1010312

    const-string v2, "Copy"

    const/4 v3, 0x1

    sget-object v4, Le0/e;->b:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lb0/a2;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    new-instance v2, Lb0/a2;

    const v6, 0x104000b

    const v7, 0x1010313

    const-string v3, "Paste"

    const/4 v4, 0x2

    sget-object v5, Le0/e;->c:Ljava/lang/Object;

    invoke-direct/range {v2 .. v7}, Lb0/a2;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    new-instance v3, Lb0/a2;

    const v7, 0x104000d

    const v8, 0x101037e

    const-string v4, "SelectAll"

    const/4 v5, 0x3

    sget-object v6, Le0/e;->d:Ljava/lang/Object;

    invoke-direct/range {v3 .. v8}, Lb0/a2;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    new-instance v4, Lb0/a2;

    const v8, 0x104001a

    const/4 v9, 0x0

    const-string v5, "Autofill"

    const/4 v6, 0x4

    sget-object v7, Le0/e;->e:Ljava/lang/Object;

    invoke-direct/range {v4 .. v9}, Lb0/a2;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lb0/a2;

    move-result-object v0

    sput-object v0, Lb0/a2;->m:[Lb0/a2;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb0/a2;->l:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb0/a2;
    .locals 1

    const-class v0, Lb0/a2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb0/a2;

    return-object p0
.end method

.method public static values()[Lb0/a2;
    .locals 1

    sget-object v0, Lb0/a2;->m:[Lb0/a2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb0/a2;

    return-object v0
.end method
