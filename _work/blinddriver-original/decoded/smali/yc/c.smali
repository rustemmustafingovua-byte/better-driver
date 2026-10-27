.class public abstract Lyc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/lang/Object;

.field public static final e:Lr9/i;

.field public static final f:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    const/16 v0, 0x451

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x435

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v2, Lt8/j;

    invoke-direct {v2, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x44d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x454

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x44b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v5, 0x438

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    new-instance v6, Lt8/j;

    invoke-direct {v6, v0, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x456

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v7, v6

    new-instance v6, Lt8/j;

    invoke-direct {v6, v0, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x457

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v8, v7

    new-instance v7, Lt8/j;

    invoke-direct {v7, v0, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x491

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v5, 0x433

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v9, v8

    new-instance v8, Lt8/j;

    invoke-direct {v8, v0, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v9

    filled-new-array/range {v2 .. v8}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyc/c;->a:Ljava/lang/Object;

    new-instance v2, Lt8/j;

    const-string v0, "\u0432\u0443\u043b\u0438\u0446\u044f"

    const-string v3, "\u0432\u0443\u043b"

    invoke-direct {v2, v0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    invoke-direct {v0, v3, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lt8/j;

    const-string v5, "\u0443\u043b"

    invoke-direct {v4, v5, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lt8/j;

    const-string v6, "\u0443\u043b\u0438\u0446\u0430"

    invoke-direct {v5, v6, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lt8/j;

    const-string v7, "street"

    invoke-direct {v6, v7, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lt8/j;

    const-string v8, "st"

    invoke-direct {v7, v8, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lt8/j;

    const-string v3, "\u043f\u0440\u043e\u0441\u043f\u0435\u043a\u0442"

    const-string v9, "\u043f\u0440\u043e\u0441\u043f"

    invoke-direct {v8, v3, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    invoke-direct {v3, v9, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lt8/j;

    const-string v11, "\u043f\u0440"

    invoke-direct {v10, v11, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lt8/j;

    const-string v12, "\u043f\u0440\u043a\u0442"

    invoke-direct {v11, v12, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lt8/j;

    const-string v13, "avenue"

    invoke-direct {v12, v13, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lt8/j;

    const-string v14, "ave"

    invoke-direct {v13, v14, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lt8/j;

    const-string v9, "\u043f\u0440\u043e\u0432\u0443\u043b\u043e\u043a"

    const-string v15, "\u043f\u0440\u043e\u0432"

    invoke-direct {v14, v9, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lt8/j;

    invoke-direct {v9, v15, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    new-instance v0, Lt8/j;

    move-object/from16 v17, v2

    const-string v2, "\u043f\u0435\u0440\u0435\u0443\u043b\u043e\u043a"

    invoke-direct {v0, v2, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    move-object/from16 v18, v0

    const-string v0, "\u043f\u0435\u0440"

    invoke-direct {v2, v0, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    move-object/from16 v19, v2

    const-string v2, "lane"

    invoke-direct {v0, v2, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v15, "\u0431\u0443\u043b\u044c\u0432\u0430\u0440"

    move-object/from16 v20, v0

    const-string v0, "\u0431\u0443\u043b\u044c\u0432"

    invoke-direct {v2, v15, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Lt8/j;

    invoke-direct {v15, v0, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v21, v2

    new-instance v2, Lt8/j;

    move-object/from16 v22, v3

    const-string v3, "\u0431\u0443\u043b"

    invoke-direct {v2, v3, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    move-object/from16 v23, v2

    const-string v2, "boulevard"

    invoke-direct {v3, v2, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v2, "\u043f\u043b\u043e\u0449\u0430"

    move-object/from16 v24, v3

    const-string v3, "\u043f\u043b"

    invoke-direct {v0, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    invoke-direct {v2, v3, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v25, v0

    new-instance v0, Lt8/j;

    move-object/from16 v26, v2

    const-string v2, "\u043f\u043b\u043e\u0449\u0430\u0434\u044c"

    invoke-direct {v0, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    move-object/from16 v27, v0

    const-string v0, "square"

    invoke-direct {v2, v0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v3, "\u043d\u0430\u0431\u0435\u0440\u0435\u0436\u043d\u0430"

    move-object/from16 v28, v2

    const-string v2, "\u043d\u0430\u0431"

    invoke-direct {v0, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    invoke-direct {v3, v2, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v29, v0

    new-instance v0, Lt8/j;

    move-object/from16 v30, v3

    const-string v3, "\u043d\u0430\u0431\u0435\u0440\u0435\u0436\u043d\u0430\u044f"

    invoke-direct {v0, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    move-object/from16 v31, v0

    const-string v0, "embankment"

    invoke-direct {v3, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v2, "\u0448\u043e\u0441\u0435"

    invoke-direct {v0, v2, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v32, v0

    new-instance v0, Lt8/j;

    move-object/from16 v33, v3

    const-string v3, "\u0448\u043e\u0441\u0441\u0435"

    invoke-direct {v0, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    move-object/from16 v34, v0

    const-string v0, "highway"

    invoke-direct {v3, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v2, "\u0443\u0437\u0432\u0456\u0437"

    move-object/from16 v35, v3

    const-string v3, "\u0443\u0437\u0432\u0438\u0437"

    invoke-direct {v0, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    invoke-direct {v2, v3, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v36, v0

    new-instance v0, Lt8/j;

    move-object/from16 v37, v2

    const-string v2, "\u0441\u043f\u0443\u0441\u043a"

    invoke-direct {v0, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0434\u043e\u0440\u043e\u0433\u0430"

    invoke-direct {v2, v3, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v38, v0

    new-instance v0, Lt8/j;

    move-object/from16 v39, v2

    const-string v2, "road"

    invoke-direct {v0, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0442\u0443\u043f\u0438\u043a"

    invoke-direct {v2, v3, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    move-object/from16 v40, v0

    const-string v0, "\u0430\u043b\u0435\u044f"

    invoke-direct {v3, v0, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v41, v2

    new-instance v2, Lt8/j;

    move-object/from16 v42, v3

    const-string v3, "\u0430\u043b\u043b\u0435\u044f"

    invoke-direct {v2, v3, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v15

    move-object v15, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    move-object/from16 v41, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    move-object/from16 v40, v42

    filled-new-array/range {v2 .. v41}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyc/c;->b:Ljava/lang/Object;

    const-string v15, "\u0441\u043c\u0442"

    const-string v16, "\u0441\u0435\u043b\u0438\u0449\u0435"

    const-string v2, "\u0431\u0443\u0434"

    const-string v3, "\u0431\u0443\u0434\u0438\u043d\u043e\u043a"

    const-string v4, "\u0434\u043e\u043c"

    const-string v5, "\u0434"

    const-string v6, "\u0431\u0443\u0434\u0438\u043d\u043a\u0443"

    const-string v7, "no"

    const-string v8, "n"

    const-string v9, "\u043c"

    const-string v10, "\u043c\u0456\u0441\u0442\u043e"

    const-string v11, "\u0433\u043e\u0440\u043e\u0434"

    const-string v12, "\u0433"

    const-string v13, "\u0441"

    const-string v14, "\u0441\u0435\u043b\u043e"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lyc/c;->c:Ljava/util/Set;

    const/16 v0, 0x61

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x430

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x432

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x441

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v5, Lt8/j;

    invoke-direct {v5, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v6, Lt8/j;

    invoke-direct {v6, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x68

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x43d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v7, Lt8/j;

    invoke-direct {v7, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v8, Lt8/j;

    invoke-direct {v8, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v9, Lt8/j;

    invoke-direct {v9, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x43e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v10, Lt8/j;

    invoke-direct {v10, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x440

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v11, Lt8/j;

    invoke-direct {v11, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x74

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v12, Lt8/j;

    invoke-direct {v12, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x445

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v13, Lt8/j;

    invoke-direct {v13, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x79

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v14, Lt8/j;

    invoke-direct {v14, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v3 .. v14}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyc/c;->d:Ljava/lang/Object;

    new-instance v0, Lr9/i;

    const-string v1, "\\d+(?:[/\\-]\\d+)?(?:-?[a-z\u0430-\u044f\u0456\u0457])?"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyc/c;->e:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "(?<=\\d)-(?=[a-z\u0430-\u044f\u0456\u0457])"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyc/c;->f:Lr9/i;

    return-void
.end method
