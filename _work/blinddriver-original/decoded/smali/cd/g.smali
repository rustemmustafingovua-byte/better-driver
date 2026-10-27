.class public abstract Lcd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt8/o;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 94

    new-instance v0, La1/b;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lcd/g;->a:Lt8/o;

    new-instance v1, Lt8/j;

    const-string v0, "\u041f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0437\u0430 \u0432\u0438\u0448\u043a\u043e\u044e \u0437\u0432\'\u044f\u0437\u043a\u0443 (\u00b1{0} \u043a\u043c)"

    const-string v2, "Approximately by the cell tower (\u00b1{0} km)"

    invoke-direct {v1, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v0, "\u2713 \u0428\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437 \u043c\u0430\u0448\u0438\u043d\u0438: {0} \u043a\u043c/\u0433\u043e\u0434"

    const-string v3, "\u2713 Speed from the car: {0} km/h"

    invoke-direct {v2, v0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    const-string v0, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430: {0}"

    const-string v4, "Error: {0}"

    invoke-direct {v3, v0, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lt8/j;

    const-string v6, "\u2713 \u0414\u0430\u043d\u0456 \u0432\u0456\u0434 {0}, {1} \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432 (\u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e)"

    const-string v7, "\u2713 Data from {0}, {1} objects (updated)"

    invoke-direct {v5, v6, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v5

    new-instance v5, Lt8/j;

    const-string v7, "\u2713 \u0414\u0430\u043d\u0456 \u0432\u0456\u0434 {0}, {1} \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432 (\u0432\u0448\u0438\u0442\u0430 \u0432 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a)"

    const-string v8, "\u2713 Data from {0}, {1} objects (built into the app)"

    invoke-direct {v5, v7, v8}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v6

    new-instance v6, Lt8/j;

    const-string v8, "\u0411\u0430\u0437\u0430 \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432 \u0434\u043e\u0440\u0456\u0433 \u0430\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u0430 (\u0434\u0430\u043d\u0456 \u0432\u0456\u0434 {0})."

    const-string v9, "The road object database is up to date (data from {0})."

    invoke-direct {v6, v8, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v7

    new-instance v7, Lt8/j;

    const-string v9, "\u0411\u0430\u0437\u0443 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e: \u0434\u0430\u043d\u0456 \u0432\u0456\u0434 {0}."

    const-string v10, "Database updated: data from {0}."

    invoke-direct {v7, v9, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v8

    new-instance v8, Lt8/j;

    const-string v10, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043e\u043d\u043e\u0432\u0438\u0442\u0438 \u0431\u0430\u0437\u0443 \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432 \u0434\u043e\u0440\u0456\u0433: {0}"

    const-string v11, "Could not update the road object database: {0}"

    invoke-direct {v8, v10, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v9

    new-instance v9, Lt8/j;

    const-string v11, "\u0412\u0456\u0434 {0} \u0434\u043e {1}"

    const-string v12, "From {0} to {1}"

    invoke-direct {v9, v11, v12}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v10

    new-instance v10, Lt8/j;

    const-string v12, "\u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0447\u0438\u0441\u043b\u043e \u0432\u0456\u0434 {0} \u0434\u043e {1}"

    const-string v13, "Enter a number from {0} to {1}"

    invoke-direct {v10, v12, v13}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v11

    new-instance v11, Lt8/j;

    const-string v13, "{0} ({1} \u0440\u0456\u0432\u0435\u043d\u044c)"

    const-string v14, "{0} ({1} level)"

    invoke-direct {v11, v13, v14}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v13, v12

    new-instance v12, Lt8/j;

    const-string v14, "{0} (\u0440\u0456\u0432\u0435\u043d\u044c: {1})"

    const-string v15, "{0} (level: {1})"

    invoke-direct {v12, v14, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v13

    new-instance v13, Lt8/j;

    const-string v15, "\u0417\u0430\u043b\u0438\u0448\u0438\u043b\u043e\u0441\u044c {0}, {1}"

    move-object/from16 v16, v1

    const-string v1, "{0} left, {1}"

    invoke-direct {v13, v15, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v14

    new-instance v14, Lt8/j;

    const-string v15, "{0} \u00b7 \u0437 {1}"

    move-object/from16 v17, v1

    const-string v1, "{0} \u00b7 since {1}"

    invoke-direct {v14, v15, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Lt8/j;

    const-string v1, "{0} \u0433\u043e\u0434 {1} \u0445\u0432 \u0442\u043e\u043c\u0443"

    move-object/from16 v18, v2

    const-string v2, "{0} h {1} min ago"

    invoke-direct {v15, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v2, "{0} \u0445\u0432 \u0442\u043e\u043c\u0443"

    move-object/from16 v19, v3

    const-string v3, "{0} min ago"

    invoke-direct {v1, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0412\u0438 \u0432 \u0440\u0430\u0439\u043e\u043d\u0456: {0}, {1}"

    move-object/from16 v20, v1

    const-string v1, "You are in the district: {0}, {1}"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u041f\u043e\u0447\u0430\u0442\u043e\u043a: {0}"

    move-object/from16 v21, v2

    const-string v2, "Start: {0}"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0414\u0430\u043d\u0456 ukrainealarm.com, \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e {0}"

    move-object/from16 v22, v1

    const-string v1, "Data from ukrainealarm.com, updated {0}"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u043f\u043e\u0440\u0443\u0447: {0}"

    move-object/from16 v23, v2

    const-string v2, "Alert nearby: {0}"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, " \u00b7 \u0437 {0}"

    move-object/from16 v24, v1

    const-string v1, " \u00b7 since {0}"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0449\u0435 {0} \u0440\u0430\u0437\u0438"

    move-object/from16 v25, v2

    const-string v2, "{0} more times"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    move-object/from16 v26, v1

    const-string v1, "\u0449\u0435 {0} \u0440\u0430\u0437\u0456\u0432"

    invoke-direct {v3, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v2, "{0}\u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb {1}, \u0449\u043e\u0431 \u0437\u0430\u043a\u0440\u0438\u0442\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a{2}"

    move-object/from16 v27, v3

    const-string v3, "{0}Press \u201cBack\u201d {1} to close the app{2}"

    invoke-direct {v1, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041f\u043e\u0431\u0443\u0434\u043e\u0432 \u0441\u044c\u043e\u0433\u043e\u0434\u043d\u0456: {0} \u0437 {1} "

    move-object/from16 v28, v1

    const-string v1, "Builds today: {0} of {1} "

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "{0} \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u043e\u0457 \u0442\u043e\u0447\u043a\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u0434\u043e {1} "

    move-object/from16 v29, v2

    const-string v2, "{0} via point of the route, up to {1} "

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043d\u0430 \u043d\u043e\u0432\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043c\u043e\u0436\u043d\u0430 \u0432 Telegram-\u0431\u043e\u0442\u0456 @{0}. "

    move-object/from16 v30, v1

    const-string v1, "You can move the subscription to a new phone in the Telegram bot @{0}. "

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0404 Telegram \u2014 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u043e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u0439 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u0432 \u0431\u043e\u0442\u0456 @{0}. "

    move-object/from16 v31, v2

    const-string v2, "If you have Telegram, you can subscribe and move the subscription in the bot @{0}. "

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434: \u0449\u0435 {0} {1}"

    move-object/from16 v32, v1

    const-string v1, "Trial period: {0} {1} left"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u041f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434: \u0449\u0435 {0} "

    move-object/from16 v33, v2

    const-string v2, "Trial period: {0} "

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0445\u0438\u0431\u043d\u0438\u0445 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043c\u0435\u043d\u0448\u0435. \u0414\u043b\u044f \u043d\u0435\u0457 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 (\u0442\u043e\u0439 \u0441\u0430\u043c\u0438\u0439, \u0449\u043e \u0434\u043b\u044f \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432), \u0440\u043e\u0437\u043c\u0456\u0440 {0}. "

    move-object/from16 v34, v1

    const-string v1, "there are fewer false \u201cLooks like you left the route\u201d. It requires the road graph (the same as for offline routes), size {0}. "

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "{0} \u0433\u043e\u0434 {1} \u0445\u0432"

    move-object/from16 v35, v2

    const-string v2, "{0} h {1} min"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "{0} \u0445\u0432"

    move-object/from16 v36, v1

    const-string v1, "{0} min"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "{0} \u0433\u043e\u0434"

    move-object/from16 v37, v2

    const-string v2, "{0} h"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "{0} \u0441"

    move-object/from16 v38, v1

    const-string v1, "{0} s"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "{0} \u041a\u0411"

    move-object/from16 v39, v2

    const-string v2, "{0} KB"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "{0} \u041c\u0411"

    move-object/from16 v40, v1

    const-string v1, "{0} MB"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "{0} \u043a\u043c"

    move-object/from16 v41, v2

    const-string v2, "{0} km"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0410\u0440\u0445\u0456\u0432 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439 ({0}). \u041e\u0431\u0435\u0440\u0456\u0442\u044c \u043c\u0435\u043d\u0448\u0435 \u043b\u043e\u0433\u0456\u0432 \u0430\u0431\u043e \u043c\u0435\u043d\u0448\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434."

    move-object/from16 v42, v1

    const-string v1, "The archive is too large ({0}). Choose fewer logs or a shorter period."

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0423\u0441\u0456 \u043e\u0431\u0440\u0430\u043d\u0456 \u0444\u0430\u0439\u043b\u0438 \u0432\u0436\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e ({0})."

    move-object/from16 v43, v2

    const-string v2, "All selected files have already been sent ({0})."

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0411\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e \u0444\u0430\u0439\u043b\u0456\u0432: {0}, {1} (\u0441\u0442\u0438\u0441\u043d\u0443\u0442\u043e \u0431\u0443\u0434\u0435 \u043c\u0435\u043d\u0448\u0435)."

    move-object/from16 v44, v1

    const-string v1, "Files to be sent: {0}, {1} (it will be smaller when compressed)."

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, " \u0423\u0436\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u0440\u0430\u043d\u0456\u0448\u0435 ({0}) \u043f\u0440\u043e\u043f\u0443\u0449\u0435\u043d\u043e."

    move-object/from16 v45, v2

    const-string v2, " Already sent earlier ({0}) skipped."

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, ", \u0442\u0440\u0438\u0432\u0430\u043b\u0456\u0441\u0442\u044c {0}. \u0406\u043d\u0448\u0430 \u043f\u043e\u0457\u0437\u0434\u043a\u0430 \u2014 \u00ab\u041e\u0431\u0440\u0430\u043d\u0456\u00bb."

    move-object/from16 v46, v1

    const-string v1, ", duration {0}. For another trip \u2014 \u201cSelected\u201d."

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0420\u0430\u0434\u0456\u0443\u0441 \u043e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f: {0} \u043c"

    move-object/from16 v47, v2

    const-string v2, "Trim radius: {0} m"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f: {0} %"

    move-object/from16 v48, v1

    const-string v1, "Sending: {0} %"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0427\u0435\u0440\u0435\u0437 \u0441\u0438\u0441\u0442\u0435\u043c\u0443 \u0442\u0435\u0436 \u0456\u0434\u0435 \u043e\u0431\u0440\u0456\u0437\u0430\u043d\u0438\u0439 \u0444\u0430\u0439\u043b (\u0440\u0430\u0434\u0456\u0443\u0441 {0} \u043c)."

    move-object/from16 v49, v2

    const-string v2, "A trimmed file goes through the system too (radius {0} m)."

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0412\u0438\u0434\u0430\u043b\u0435\u043d\u043e \u0444\u0430\u0439\u043b\u0456\u0432: {0}, \u0437\u0432\u0456\u043b\u044c\u043d\u0435\u043d\u043e {1}."

    move-object/from16 v50, v1

    const-string v1, "Files deleted: {0}, freed {1}."

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u043f\u043e\u043a\u0438 GPS \u0434\u043e\u0431\u0440\u0438\u0439: \u0437\u0456\u0431\u0440\u0430\u043d\u043e {0} \u0437 {1} \u0445\u0432 \u0441\u0442\u043e\u044f\u043d\u043e\u043a \u0456 "

    move-object/from16 v51, v2

    const-string v2, "while GPS is good: collected {0} of {1} min of stops and "

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "{0} \u0437 {1} \u0445\u0432 \u0440\u0443\u0445\u0443."

    move-object/from16 v52, v1

    const-string v1, "{0} of {1} min of driving."

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439: \u043f\u043e\u0440\u043e\u0433\u0438 \u043f\u0456\u0434\u0456\u0431\u0440\u0430\u043d\u043e \u043f\u0456\u0434 \u0432\u0430\u0448\u0443 \u043c\u0430\u0448\u0438\u043d\u0443 \u0439 \u0442\u0440\u0438\u043c\u0430\u0447. \u0421\u0442\u043e\u044f\u043d\u043e\u043a \u0440\u043e\u0437\u043f\u0456\u0437\u043d\u0430\u0454 {0} % "

    move-object/from16 v53, v2

    const-string v2, "Automatic: thresholds are tuned to your car and mount. It recognizes {0} % of stops "

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "(\u0442\u0438\u043f\u043e\u0432\u0456 \u2014 {0} %), \u0445\u0438\u0431\u043d\u0438\u0445 \u0437\u0443\u043f\u0438\u043d\u043e\u043a \u0443 \u0440\u0443\u0441\u0456 {1}"

    move-object/from16 v54, v1

    const-string v1, "(typical \u2014 {0} %), false stops while moving {1}"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "(\u0442\u0438\u043f\u043e\u0432\u0456 \u2014 {0}"

    move-object/from16 v55, v2

    const-string v2, "(typical \u2014 {0}"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443 \u0456 \u00ab\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f\u00bb \u0432\u0438\u0440\u0456\u0437\u0430\u044e\u0442\u044c\u0441\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0431\u043b\u0438\u0436\u0447\u0435 {0} \u043c \u0434\u043e \u0441\u0442\u0430\u0440\u0442\u0443 \u0439 \u0444\u0456\u043d\u0456\u0448\u0443 (\u0434\u0456\u043c, \u0440\u043e\u0431\u043e\u0442\u0430). "

    move-object/from16 v56, v1

    const-string v1, "When sending to the developer and on \u201cShare\u201d, positions closer than {0} m to the start and finish (home, work) are cut out. "

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u2713 {0}: \u0434\u0430\u043d\u0456 \u0432\u0456\u0434 {1}, {2}"

    move-object/from16 v57, v2

    const-string v2, "\u2713 {0}: data from {1}, {2}"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438 \u0434\u043e {0}"

    move-object/from16 v58, v1

    const-string v1, "Update to {0}"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438: {0} ({1}, \u043f\u0456\u0441\u043b\u044f \u0440\u043e\u0437\u043f\u0430\u043a\u0443\u0432\u0430\u043d\u043d\u044f {2})"

    move-object/from16 v59, v2

    const-string v2, "Download: {0} ({1}, {2} unpacked)"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u0432\u0441\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456 ({0})"

    move-object/from16 v60, v1

    const-string v1, "Download all regions ({0})"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0432\u0435\u0440\u0441\u0456\u044f {0}, {1}"

    move-object/from16 v61, v2

    const-string v2, "version {0}, {1}"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f {0}"

    move-object/from16 v62, v1

    const-string v1, "downloading {0}"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0423\u0441\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456 ({0}, \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e {1})"

    move-object/from16 v63, v2

    const-string v2, "All regions ({0}, installed {1})"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041e\u0440\u0456\u0454\u043d\u0442\u043e\u0432\u043d\u043e {0}-{1} \u041c\u0411 \u043f\u043b\u044e\u0441 \u0431\u043b\u0438\u0437\u044c\u043a\u043e 7 \u041c\u0411 \u0448\u0440\u0438\u0444\u0442\u0456\u0432 \u0456 \u0437\u043d\u0430\u0447\u043a\u0456\u0432 (\u043c\u0456\u0441\u0442\u043e \u0432\u0430\u0436\u0447\u0435 \u0437\u0430 \u0441\u0435\u043b\u043e: 25 \u043a\u043c \u043d\u0430\u0432\u043a\u043e\u043b\u043e \u0446\u0435\u043d\u0442\u0440\u0443 \u041a\u0438\u0454\u0432\u0430 \u0446\u0435 \u0431\u043b\u0438\u0437\u044c\u043a\u043e 35 \u041c\u0411; \u0432\u0441\u044f \u041a\u0438\u0457\u0432\u0441\u044c\u043a\u0430 \u043e\u0431\u043b\u0430\u0441\u0442\u044c \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e 100-150 \u041c\u0411). \u0422\u043e\u0447\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u0432\u0438\u0434\u043d\u043e \u043d\u0438\u0436\u0447\u0435 \u043f\u0456\u0441\u043b\u044f \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f."

    move-object/from16 v64, v1

    const-string v1, "Roughly {0}-{1} MB plus about 7 MB of fonts and icons (a city is heavier than a village: 25 km around the center of Kyiv is about 35 MB; the whole Kyiv region is roughly 100-150 MB). The exact size is shown below after downloading."

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, "\u0412\u0437\u0434\u043e\u0432\u0436 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: {0} \u041c\u0411"

    move-object/from16 v65, v2

    const-string v2, "Along the route: {0} MB"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "\u041e\u0431\u043b\u0430\u0441\u0442\u044c: {0} \u041c\u0411"

    move-object/from16 v66, v1

    const-string v1, "Area: {0} MB"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v3, " (\u0440\u0430\u0434\u0456\u0443\u0441 {0} \u043a\u043c)"

    move-object/from16 v67, v2

    const-string v2, " (radius {0} km)"

    invoke-direct {v1, v3, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, ", \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0454\u0442\u044c\u0441\u044f {0} %"

    move-object/from16 v68, v1

    const-string v1, ", downloading {0} %"

    invoke-direct {v2, v3, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    invoke-direct {v1, v0, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v3, "\u041f\u0435\u0440\u0435\u0434\u0430\u044e \u043f\u043e\u0437\u0438\u0446\u0456\u044e BlindDriver, \u00b1{0} \u043c."

    const-string v4, "Sharing the BlindDriver position, \u00b1{0} m."

    invoke-direct {v0, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    const-string v4, "\u041f\u0430\u0443\u0437\u0430 \u043f\u0456\u0434\u043c\u0456\u043d\u0438: \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438 \u0441\u0445\u043e\u0436\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u043b\u0438\u0441\u044f, \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u044f\u044e \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS (\u0434\u043e {0} \u0441). Waze \u043d\u0430 \u0446\u0435\u0439 \u0447\u0430\u0441 \u0431\u0430\u0447\u0438\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS."

    move-object/from16 v69, v0

    const-string v0, "Spoofing pause: satellites seem to be back, checking real GPS (up to {0} s). Waze sees real GPS for that time."

    invoke-direct {v3, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u041a\u043b\u044e\u0447 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e: pk.\u2026{0}. \u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u0447\u0435\u0440\u0435\u0437 Mapbox \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438; \u044f\u043a\u0449\u043e Mapbox \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439, \u0447\u0435\u0440\u0435\u0437 OSRM."

    move-object/from16 v70, v1

    const-string v1, "Key saved: pk.\u2026{0}. Routes are built through Mapbox with traffic; if Mapbox is unavailable, through OSRM."

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0437\u0430\u043c\u0456\u0440\u0456\u0432: {0}"

    move-object/from16 v71, v0

    const-string v0, "measurements: {0}"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, " (\u043f\u043e\u0457\u0437\u0434\u043e\u043a: {0})."

    move-object/from16 v72, v1

    const-string v1, " (trips: {0})."

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0406\u043c\u043f\u043e\u0440\u0442 \u043c\u0438\u043d\u0443\u043b\u0438\u0445 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u0437 \u043b\u043e\u0433\u0456\u0432: {0} \u0437 {1}\u2026"

    move-object/from16 v73, v0

    const-string v0, "Importing past trips from logs: {0} of {1}\u2026"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u0406\u043c\u043f\u043e\u0440\u0442\u043e\u0432\u0430\u043d\u043e \u0437 \u043b\u043e\u0433\u0456\u0432 ({0}): {1}"

    move-object/from16 v74, v1

    const-string v1, "Imported from logs ({0}): {1}"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0406\u043c\u043f\u043e\u0440\u0442\u0443\u0432\u0430\u0442\u0438 \u043c\u0438\u043d\u0443\u043b\u0456 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0437 \u043b\u043e\u0433\u0456\u0432 ({0})"

    move-object/from16 v75, v0

    const-string v0, "Import past trips from logs ({0})"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, " (\u0437\u0430\u043c\u0456\u0440\u0456\u0432: {0})"

    move-object/from16 v76, v1

    const-string v1, " (measurements: {0})"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0432\u0456\u0434 {0} \u0434\u043e {1}"

    move-object/from16 v77, v0

    const-string v0, "from {0} to {1}"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f: {0} %"

    move-object/from16 v78, v1

    const-string v1, "Downloading: {0} %"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u0439 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0438 {0}"

    move-object/from16 v79, v0

    const-string v0, "Download and install {0}"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 {0} (.ipa \u0434\u043b\u044f Sideloadly)"

    move-object/from16 v80, v1

    const-string v1, "Download {0} (.ipa for Sideloadly)"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430 \u0432\u0435\u0440\u0441\u0456\u044f: {0} ({1})"

    move-object/from16 v81, v0

    const-string v0, "Installed version: {0} ({1})"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u0429\u043e \u043d\u043e\u0432\u043e\u0433\u043e: {0}"

    move-object/from16 v82, v1

    const-string v1, "What\'s new: {0}"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "{0} \u2014 {1} \u0433\u0440\u043d"

    move-object/from16 v83, v0

    const-string v0, "{0} \u2014 {1} UAH"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u0429\u043e \u043d\u043e\u0432\u043e\u0433\u043e \u0443 \u0432\u0435\u0440\u0441\u0456\u0457 {0}"

    move-object/from16 v84, v1

    const-string v1, "What\'s new in version {0}"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0429\u043e \u043d\u043e\u0432\u043e\u0433\u043e (\u0433\u043e\u0442\u0443\u0454\u0442\u044c\u0441\u044f \u0432\u0435\u0440\u0441\u0456\u044f {0})"

    move-object/from16 v85, v0

    const-string v0, "What\'s new (version {0} is being prepared)"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u0412\u0435\u0440\u0441\u0456\u044f {0}"

    move-object/from16 v86, v1

    const-string v1, "Version {0}"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e: {0}"

    move-object/from16 v87, v0

    const-string v0, "Route from the trip saved: {0}"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u043d\u044f\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442: {0}"

    move-object/from16 v88, v1

    const-string v1, "Could not record the route: {0}"

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u0423 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u2014 \u043d\u0435 \u0431\u0456\u043b\u044c\u0448\u0435 {0} \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u043e\u0457 \u0442\u043e\u0447\u043a\u0438. \u041e\u0444\u043e\u0440\u043c\u0456\u0442\u044c \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u0434\u043b\u044f \u0431\u0456\u043b\u044c\u0448\u043e\u0457 \u043a\u0456\u043b\u044c\u043a\u043e\u0441\u0442\u0456."

    move-object/from16 v89, v0

    const-string v0, "In the free version \u2014 no more than {0} via point. Subscribe for more."

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439. {0} \u0410\u0431\u043e \u0432\u0441\u0442\u0430\u0432\u0442\u0435 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438."

    move-object/from16 v90, v1

    const-string v1, "No internet: address search is unavailable. {0} Or paste coordinates."

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u043e\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze: {0}"

    move-object/from16 v91, v0

    const-string v0, "Could not build the route from Waze: {0}"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v4, "\u041b\u0456\u043c\u0456\u0442 \u043f\u043e\u0431\u0443\u0434\u043e\u0432 \u043d\u0430 \u0441\u044c\u043e\u0433\u043e\u0434\u043d\u0456 \u0432\u0438\u0447\u0435\u0440\u043f\u0430\u043d\u043e ({0}/\u0434\u043e\u0431\u0443). \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0437\u0430\u0432\u0442\u0440\u0430 \u0430\u0431\u043e \u043e\u0444\u043e\u0440\u043c\u0456\u0442\u044c \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443."

    move-object/from16 v92, v1

    const-string v1, "Today\'s build limit is used up ({0}/day). Try tomorrow or subscribe."

    invoke-direct {v0, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v4, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: {0}"

    move-object/from16 v93, v0

    const-string v0, "Route error: {0}"

    invoke-direct {v1, v4, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v25

    move-object/from16 v25, v29

    move-object/from16 v29, v33

    move-object/from16 v33, v37

    move-object/from16 v37, v41

    move-object/from16 v41, v45

    move-object/from16 v45, v49

    move-object/from16 v49, v53

    move-object/from16 v53, v57

    move-object/from16 v57, v61

    move-object/from16 v61, v65

    move-object/from16 v65, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v22

    move-object/from16 v22, v26

    move-object/from16 v26, v30

    move-object/from16 v30, v34

    move-object/from16 v34, v38

    move-object/from16 v38, v42

    move-object/from16 v42, v46

    move-object/from16 v46, v50

    move-object/from16 v50, v54

    move-object/from16 v54, v58

    move-object/from16 v58, v62

    move-object/from16 v62, v66

    move-object/from16 v66, v70

    move-object/from16 v70, v72

    move-object/from16 v72, v74

    move-object/from16 v74, v76

    move-object/from16 v76, v78

    move-object/from16 v78, v80

    move-object/from16 v80, v82

    move-object/from16 v82, v84

    move-object/from16 v84, v86

    move-object/from16 v86, v88

    move-object/from16 v88, v90

    move-object/from16 v90, v92

    move-object/from16 v92, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v24

    move-object/from16 v24, v28

    move-object/from16 v28, v32

    move-object/from16 v32, v36

    move-object/from16 v36, v40

    move-object/from16 v40, v44

    move-object/from16 v44, v48

    move-object/from16 v48, v52

    move-object/from16 v52, v56

    move-object/from16 v56, v60

    move-object/from16 v60, v64

    move-object/from16 v64, v68

    move-object/from16 v68, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v27

    move-object/from16 v27, v31

    move-object/from16 v31, v35

    move-object/from16 v35, v39

    move-object/from16 v39, v43

    move-object/from16 v43, v47

    move-object/from16 v47, v51

    move-object/from16 v51, v55

    move-object/from16 v55, v59

    move-object/from16 v59, v63

    move-object/from16 v63, v67

    move-object/from16 v67, v69

    move-object/from16 v69, v71

    move-object/from16 v71, v73

    move-object/from16 v73, v75

    move-object/from16 v75, v77

    move-object/from16 v77, v79

    move-object/from16 v79, v81

    move-object/from16 v81, v83

    move-object/from16 v83, v85

    move-object/from16 v85, v87

    move-object/from16 v87, v89

    move-object/from16 v89, v91

    move-object/from16 v91, v93

    filled-new-array/range {v1 .. v92}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcd/g;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u0439 \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438"

    const-string v1, "Check and save"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043b\u044e\u0447 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e."

    const-string v1, "The key was deleted."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0439 \u043a\u043b\u044e\u0447"

    const-string v1, "Delete the saved key"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043b\u044e\u0447 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u043c (Android Keystore) \u043b\u0438\u0448\u0435 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0439 \u043f\u0435\u0440\u0435\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0456\u043b\u044c\u043a\u0438 \u0432 \u0437\u0430\u043f\u0438\u0442\u0430\u0445 \u0434\u043e Mapbox. \u0421\u0442\u0432\u043e\u0440\u0438\u0442\u0438 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439 \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447: \u043e\u0431\u043b\u0456\u043a\u043e\u0432\u0438\u0439 \u0437\u0430\u043f\u0438\u0441 Mapbox \u2192 Access tokens. \u0421\u0435\u043a\u0440\u0435\u0442\u043d\u0456 \u043a\u043b\u044e\u0447\u0456 (sk.\u2026) \u043d\u0435 \u043f\u0456\u0434\u0445\u043e\u0434\u044f\u0442\u044c."

    const-string v1, "The key is stored encrypted (Android Keystore) only on this phone and is sent only in requests to Mapbox. Create a free public key: Mapbox account \u2192 Access tokens. Secret keys (sk.\u2026) do not work."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0426\u0435 \u0441\u0435\u043a\u0440\u0435\u0442\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 (sk.\u2026): \u0439\u043e\u0433\u043e \u043d\u0435 \u043c\u043e\u0436\u043d\u0430 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u0432 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443. \u0421\u0442\u0432\u043e\u0440\u0456\u0442\u044c \u0443 Mapbox \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 (pk.\u2026)."

    const-string v1, "This is a secret key (sk.\u2026): it must not be stored in the app. Create a public key (pk.\u2026) in Mapbox."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0445\u043e\u0436\u0435 \u043d\u0430 \u043d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u0438\u0439 \u0444\u043e\u0440\u043c\u0430\u0442: \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 Mapbox \u043f\u043e\u0447\u0438\u043d\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u00abpk.\u00bb \u0456 \u0441\u043a\u043b\u0430\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u0434\u0432\u043e\u0445 \u0434\u043e\u0432\u0433\u0438\u0445 \u0447\u0430\u0441\u0442\u0438\u043d \u0447\u0435\u0440\u0435\u0437 \u043a\u0440\u0430\u043f\u043a\u0443."

    const-string v1, "Looks like a wrong format: a Mapbox public key starts with \u201cpk.\u201d and consists of two long parts separated by a dot."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u0443\u0432\u0430\u0442\u0438 \u0439 \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043a\u043b\u044e\u0447 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const-string v1, "Could not encrypt and save the key on this phone."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043b\u044e\u0447 \u0434\u0456\u0439\u0441\u043d\u0438\u0439 \u0456 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0439."

    const-string v1, "The key is valid and saved."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mapbox \u0432\u0456\u0434\u0445\u0438\u043b\u0438\u0432 \u043a\u043b\u044e\u0447 (401): \u0432\u0456\u043d \u043d\u0435\u0434\u0456\u0439\u0441\u043d\u0438\u0439."

    const-string v1, "Mapbox rejected the key (401): it is invalid."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mapbox \u043d\u0435 \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0454 \u0446\u044c\u043e\u043c\u0443 \u043a\u043b\u044e\u0447\u0443 \u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 (403): \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043f\u0440\u0430\u0432\u0430 \u0439 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043a\u043b\u044e\u0447\u0430."

    const-string v1, "Mapbox does not allow this key to build routes (403): check the key\'s permissions and restrictions."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043b\u044e\u0447 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e, \u0430\u043b\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f: \u043d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 Mapbox. \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435."

    const-string v1, "The key was saved, but could not be verified: no connection to Mapbox. Check later."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0432\u0456\u0433\u0430\u0442\u043e\u0440 \u0434\u043b\u044f \u0423\u043a\u0440\u0430\u0457\u043d\u0438, \u044f\u043a\u0438\u0439 \u043d\u0435 \u0433\u0443\u0431\u0438\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u0431\u0440\u0435\u0448\u0435."

    const-string v1, "A navigator for Ukraine that does not get lost when GPS is jammed or lying."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0435\u0440\u0441\u0456\u044f"

    const-string v1, "Version"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0431\u0456\u0440\u043a\u0430"

    const-string v1, "Build"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug (\u0434\u043b\u044f \u0440\u043e\u0437\u0440\u043e\u0431\u043a\u0438)"

    const-string v1, "debug (for development)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ID \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438"

    const-string v1, "Installation ID"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u043f\u0430\u0434\u043a\u043e\u0432\u0438\u0439 \u043d\u043e\u043c\u0435\u0440 \u0431\u0435\u0437 \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u0434\u043e \u0432\u0430\u0441 \u0447\u0438 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430. \u0412\u0456\u043d \u0437\u043d\u0430\u0434\u043e\u0431\u0438\u0442\u044c\u0441\u044f, \u0449\u043e\u0431 \u043f\u043e\u0432\'\u044f\u0437\u0430\u0442\u0438 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u043b\u043e\u0433\u0438 \u0439 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443, \u043a\u043e\u043b\u0438 \u0446\u0456 \u0444\u0443\u043d\u043a\u0446\u0456\u0457 \u0437\'\u044f\u0432\u043b\u044f\u0442\u044c\u0441\u044f."

    const-string v1, "A random number not tied to you or the phone. It will be needed to link sent logs and the subscription when those features appear."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u043d\u0456 \u0439 \u0441\u0435\u0440\u0432\u0456\u0441\u0438"

    const-string v1, "Data and services"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u043d\u0456 \u043a\u0430\u0440\u0442\u0438 \u00a9 \u0443\u0447\u0430\u0441\u043d\u0438\u043a\u0438 OpenStreetMap (\u043b\u0456\u0446\u0435\u043d\u0437\u0456\u044f ODbL). \u0422\u0430\u0439\u043b\u0438: OpenFreeMap. \u041c\u0430\u043b\u044e\u0432\u0430\u043d\u043d\u044f \u043a\u0430\u0440\u0442\u0438: MapLibre."

    const-string v1, "Map data \u00a9 OpenStreetMap contributors (ODbL license). Tiles: OpenFreeMap. Map rendering: MapLibre."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0439 \u0437\u0430\u0442\u043e\u0440\u0438: Mapbox (\u0437 \u0432\u0430\u0448\u0438\u043c \u043a\u043b\u044e\u0447\u0435\u043c) \u0430\u0431\u043e OSRM. \u041f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441: Photon (Komoot), \u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0433\u0435\u043e\u043a\u043e\u0434\u0438\u043d\u0433: Nominatim (OpenStreetMap)."

    const-string v1, "Routes and traffic: Mapbox (with your key) or OSRM. Address search: Photon (Komoot), reverse geocoding: Nominatim (OpenStreetMap)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u0435\u0436\u0430\u0447\u0456 \u043f\u043e\u043b\u0456\u0446\u0435\u0439\u0441\u044c\u043a\u0456: OpenStreetMap. \u041a\u0430\u043c\u0435\u0440\u0438 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456: \u0432\u043b\u0430\u0441\u043d\u0430 \u0431\u0430\u0437\u0430 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v1, "Speed bumps: OpenStreetMap. Speed cameras: the app\'s own database."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a (\u043f\u043e\u0437\u0438\u0446\u0456\u044f, \u0434\u0430\u0442\u0447\u0438\u043a\u0438, \u043f\u043e\u0434\u0456\u0457) \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456, \u0434\u043e\u043a\u0438 \u0432\u0438 \u0441\u0430\u043c\u0456 \u0457\u0445 \u043d\u0435 \u043d\u0430\u0434\u0456\u0448\u043b\u0435\u0442\u0435. \u0423 \u0432\u0438\u043f\u0443\u0449\u0435\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0456\u0432 \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e, \u0439\u043e\u0433\u043e \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u0435 \u0432\u0438 (\u043a\u043d\u043e\u043f\u043a\u0430 REC). \u041a\u043b\u044e\u0447 Mapbox \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u043c \u0456 \u043d\u0456\u043a\u0443\u0434\u0438 \u043d\u0435 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u044c\u0441\u044f, \u043a\u0440\u0456\u043c \u0437\u0430\u043f\u0438\u0442\u0456\u0432 \u0434\u043e Mapbox.\n\n\u0414\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438 \u0439 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u044c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0440\u0435\u0454\u0441\u0442\u0440\u0443\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u0430\u0448\u043e\u043c\u0443 \u0441\u0435\u0440\u0432\u0435\u0440\u0456: \u0432\u0438\u043f\u0430\u0434\u043a\u043e\u0432\u0438\u0439 ID \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438 (\u043d\u0438\u0436\u0447\u0435), \u0432\u0435\u0440\u0441\u0456\u0457 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u0439 Android, \u0434\u0430\u0442\u0430 \u043f\u0435\u0440\u0448\u043e\u0433\u043e \u0437\u0430\u043f\u0443\u0441\u043a\u0443. \u041d\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457, \u043d\u0456 \u0456\u043c\u0435\u043d\u0456, \u043d\u0456 \u043d\u043e\u043c\u0435\u0440\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430. \u041c\u043e\u0434\u0435\u043b\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0439 \u043d\u0435\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0432\u0456\u0434\u0431\u0438\u0442\u043e\u043a \u0439\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e ID \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u044e\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u043a\u043e\u043b\u0438 \u0432\u0438 \u0441\u0430\u043c\u0456 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u0454\u0442\u0435 \u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438\u00bb \u0447\u0438 \u00ab\u0412\u0456\u0434\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443\u00bb (\u0449\u043e\u0431 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u043b\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f)."

    const-string v1, "Trip logs (position, sensors, events) are stored only on the phone until you send them yourself. In the released version log recording is off by default, you turn it on (the REC button). The Mapbox key is stored encrypted and is sent nowhere except in requests to Mapbox.\n\nTo verify the subscription and updates the app registers on our server: a random installation ID (below), the app and Android versions, the date of first launch. No position, no name, no phone number. The phone model and an irreversible fingerprint of its system ID are sent only when you yourself tap \u201cSubscribe\u201d or \u201cRestore subscription\u201d (so that the subscription can be restored after reinstalling)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u043b\u0456\u0442\u0438\u043a\u0430 \u043a\u043e\u043d\u0444\u0456\u0434\u0435\u043d\u0446\u0456\u0439\u043d\u043e\u0441\u0442\u0456"

    const-string v1, "Privacy policy"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u042f\u043a \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0434\u0430\u043d\u0456 (\u0437\u043e\u043a\u0440\u0435\u043c\u0430 \u0431\u0435\u0437 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443)"

    const-string v1, "How to delete data (including without the app)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BlindDriver \u2014 \u043d\u0430\u0432\u0456\u0433\u0430\u0442\u043e\u0440 \u0434\u043b\u044f \u0423\u043a\u0440\u0430\u0457\u043d\u0438, \u044f\u043a\u0438\u0439 \u043d\u0435 \u0433\u0443\u0431\u0438\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u0431\u0440\u0435\u0448\u0435.\n\n"

    const-string v1, "BlindDriver \u2014 a navigator for Ukraine that does not get lost when GPS is jammed or lying.\n\n"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u043f\u0438\u0441: "

    const-string v1, "Description: "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u043d\u044f \u0432\u0435\u0440\u0441\u0456\u044f (\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 APK): "

    const-string v1, "Latest version (download APK): "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0456 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0441\u043a\u043e\u043f\u0456\u0439\u043e\u0432\u0430\u043d\u043e \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0456\u043d\u0443"

    const-string v1, "The text and link were copied to the clipboard"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f (\u043a\u043e\u043f\u0456\u044e\u0432\u0430\u0442\u0438 \u0442\u0435\u043a\u0441\u0442 \u0456 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f)"

    const-string v1, "Share (copy the text and link)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043c\u043e\u0457 \u0434\u0430\u043d\u0456?"

    const-string v1, "Delete my data?"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0431\u0443\u0434\u0435 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u043b\u043e\u0433\u0438, \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0443 \u0434\u043e Telegram \u0456 \u0432\u0430\u0448\u0456 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0438 (\u0442\u0435\u043b\u0435\u0444\u043e\u043d, e-mail). \u042f\u043a\u0449\u043e \u0443 \u0432\u0430\u0441 \u0454 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430, \u0432\u043e\u043d\u0430 \u0431\u0443\u0434\u0435 \u0432\u0442\u0440\u0430\u0447\u0435\u043d\u0430 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0430 \u0456\u043d\u0448\u0438\u0445 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430\u0445."

    const-string v1, "On the server the sent logs, the Telegram binding and your contacts (phone, e-mail) will be deleted. If you have a subscription, it will be lost on this and other phones."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0430\u043a\u043e\u0436 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456"

    const-string v1, "Also delete trip logs on this phone"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u043d\u0456 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e."

    const-string v1, "Data deleted."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 \u0430\u0431\u043e \u043d\u0430\u043f\u0438\u0448\u0456\u0442\u044c \u043d\u0430\u043c \u0443 Telegram."

    const-string v1, "No connection to the server. Try later or write to us in Telegram."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0432 Pro. \u041f\u0440\u043e\u0431\u0456\u0433, \u0447\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0439 \u043e\u0441\u043e\u0431\u0438\u0441\u0442\u0438\u0439 \u043a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442 \u0437\u0430\u0442\u043e\u0440\u0456\u0432 \u0443\u0436\u0435 \u0440\u0430\u0445\u0443\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u2014 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e \u0432\u0438 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0435 \u0457\u0445 \u0442\u0443\u0442 \u043e\u0434\u0440\u0430\u0437\u0443, \u0440\u0430\u0437\u043e\u043c \u0437 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u0456\u043c\u0438 \u0442\u0438\u0436\u043d\u044f\u043c\u0438."

    const-string v1, "Available in Pro. Distance, travel time and the personal traffic coefficient are already computed on the phone \u2014 with a subscription you will see them here at once, along with previous weeks."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0435\u043d\u044c"

    const-string v1, "Day"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0438\u0436\u0434\u0435\u043d\u044c"

    const-string v1, "Week"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0440\u043e\u0431\u0456\u0433"

    const-string v1, "Distance"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0434\u043e\u0440\u043e\u0437\u0456"

    const-string v1, "Driving"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u0442\u043e\u044f\u043d\u0446\u0456"

    const-string v1, "Parked"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u00ab\u0423 \u0434\u043e\u0440\u043e\u0437\u0456\u00bb \u2014 \u0447\u0430\u0441 \u0440\u0443\u0445\u0443; \u00ab\u043d\u0430 \u0441\u0442\u043e\u044f\u043d\u0446\u0456\u00bb \u2014 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 (\u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u0437\u0430\u0442\u043e\u0440\u0438, \u043a\u043e\u0440\u043e\u0442\u043a\u0435 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f). \u0417\u0443\u043f\u0438\u043d\u043a\u0430 \u0434\u043e\u0432\u0448\u0430 \u0437\u0430 10 \u0445\u0432\u0438\u043b\u0438\u043d \u0432\u0432\u0430\u0436\u0430\u0454\u0442\u044c\u0441\u044f \u043a\u0456\u043d\u0446\u0435\u043c \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0439 \u043d\u0435 \u0440\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v1, "\u201cDriving\u201d is movement time; \u201cparked\u201d is stops during a trip (traffic lights, jams, short waiting). A stop longer than 10 minutes counts as the end of the trip and is not counted."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0441\u043e\u0431\u0438\u0441\u0442\u0438\u0439 \u043a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442 \u0437\u0430\u0442\u043e\u0440\u0456\u0432"

    const-string v1, "Personal traffic coefficient"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0440\u0430\u0437\u0456\u0432 \u0434\u043e\u0432\u0448\u0435 \u0432\u0438 \u043d\u0430\u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u0457\u0434\u0435\u0442\u0435, \u043d\u0456\u0436 \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0454 \u043b\u0456\u043c\u0456\u0442 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456. \u0420\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0437\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u0437\u0456 \u0437\u043d\u0430\u043a\u0430\u043c\u0438 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f (\u043a\u043b\u044e\u0447 Mapbox), \u0442\u0456\u043b\u044c\u043a\u0438 \u043f\u0456\u0441\u043b\u044f 50 \u043c \u0432\u0456\u0434 \u0441\u0442\u0430\u0440\u0442\u0443 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u2014 \u0449\u043e\u0431 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f \u043f\u0430\u0441\u0430\u0436\u0438\u0440\u0430 \u0447\u0438 \u043f\u0440\u043e\u043f\u0443\u0441\u043a \u043c\u0430\u0448\u0438\u043d\u0438 \u043d\u0435 \u0432\u0432\u0430\u0436\u0430\u043b\u0438\u0441\u044c \u0437\u0430\u0442\u043e\u0440\u043e\u043c. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043a\u043b\u0456\u0442\u0438\u043d\u043a\u0443, \u0449\u043e\u0431 \u0432\u043f\u0438\u0441\u0430\u0442\u0438 \u0441\u0432\u043e\u0454 \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f."

    const-string v1, "How many times longer you actually drive than the speed limit allows. Computed during guidance along a route with limit signs (Mapbox key), only after 50 m from the trip start \u2014 so that waiting for a passenger or letting a car pass is not counted as a jam. Tap the cell to enter your own value."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0432\u0440\u0443\u0447\u043d\u0443"

    const-string v1, "manual"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0449\u0435 \u043d\u0435\u043c\u0430\u0454 \u0437\u0430\u043c\u0456\u0440\u0456\u0432"

    const-string v1, "no measurements yet"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u043e \u0437 \u0432\u0430\u0448\u0438\u0445 \u043f\u043e\u0457\u0437\u0434\u043e\u043a, \u0431\u0435\u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u0430 \u0439 \u0431\u0435\u0437 \u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0456 \u0434\u0430\u043d\u0438\u0445. \u0417\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f 90 \u0434\u043d\u0456\u0432."

    const-string v1, "Computed locally from your trips, without a server and without sending data. Stored for 90 days."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u043f\u0440\u0430\u0432\u043a\u0430 \u0434\u043e \u043f\u0440\u043e\u0433\u043d\u043e\u0437\u0443 \u0447\u0430\u0441\u0443"

    const-string v1, "Correction to the time forecast"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0440\u0430\u0437\u0456\u0432 \u0434\u043e\u0432\u0448\u0435 \u0432\u0438 \u043d\u0430\u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u0434\u043e\u0457\u0436\u0434\u0436\u0430\u0454\u0442\u0435, \u043d\u0456\u0436 \u043e\u0431\u0456\u0446\u044f\u0454 Mapbox (\u0431\u0435\u0437 \u0441\u0442\u043e\u044f\u043d\u043e\u043a \u0434\u043e\u0432\u0448\u0435 2 \u0445\u0432\u0438\u043b\u0438\u043d). \u041d\u0435\u044e \u043c\u043d\u043e\u0436\u0438\u0442\u044c\u0441\u044f \u0447\u0430\u0441 \u0443 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0430\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0439 \u0437\u0430\u043b\u0438\u0448\u043e\u043a \u0447\u0430\u0441\u0443 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. Mapbox: \u00d7%.2f"

    const-string v1, "How many times longer you actually arrive than Mapbox promises (without stops longer than 2 minutes). It multiplies the time in route options and the remaining time during guidance. Mapbox: \u00d7%.2f"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u043f\u043e\u043f\u0440\u0430\u0432\u043a\u0443 \u0434\u043e \u0441\u0442\u0430\u0440\u0442\u043e\u0432\u043e\u0457"

    const-string v1, "Reset the correction to the initial one"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u0440\u0430\u0445\u043e\u0432\u0430\u043d\u0435: \u00d7%.2f"

    const-string v1, "Computed: \u00d7%.2f"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, " (\u0437\u0430\u043c\u0456\u0440\u0456\u0432 \u0449\u0435 \u043d\u0435\u043c\u0430\u0454)"

    const-string v1, " (no measurements yet)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ". \u0412\u043f\u0438\u0441\u0430\u043d\u0435 \u0432\u0440\u0443\u0447\u043d\u0443 \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043d\u0435 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0438\u0441\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0430\u043c\u0438, \u0434\u043e\u043a\u0438 \u043d\u0435 \u043d\u0430\u0442\u0438\u0441\u043d\u0435\u0442\u0435 \u00ab\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u043d\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u0432\u0435\u00bb."

    const-string v1, ". A manually entered value is not overwritten by trips until you tap \u201cReset to computed\u201d."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442, \u00d7"

    const-string v1, "Coefficient, \u00d7"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u043d\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u043e\u0432\u0430\u043d\u0435"

    const-string v1, "Reset to computed"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u044c\u043e\u0433\u043e\u0434\u043d\u0456"

    const-string v1, "Today"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423\u0447\u043e\u0440\u0430"

    const-string v1, "Yesterday"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0426\u0435\u0439 \u0442\u0438\u0436\u0434\u0435\u043d\u044c"

    const-string v1, "This week"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "%.1f \u043a\u043c"

    const-string v1, "%.1f km"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "%,d \u043a\u043c"

    const-string v1, "%,d km"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0430 \u0444\u0430\u0439\u043b\u0430 (\u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u0439 \u043f\u0456\u0434\u043f\u0438\u0441)\u2026"

    const-string v1, "Checking the file (checksum and signature)\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f. \u042f\u043a\u0449\u043e \u0437\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f \u0432\u0456\u043a\u043d\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u0438, \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u0412\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0438\u00bb."

    const-string v1, "Installing. If a system window appears, tap \u201cInstall\u201d."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Android \u043f\u043e\u0442\u0440\u0435\u0431\u0443\u0454 \u0432\u0430\u0448\u043e\u0433\u043e \u0434\u043e\u0437\u0432\u043e\u043b\u0443 \u043d\u0430 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u044c \u0456\u0437 \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443. \u0412\u0456\u0434\u043a\u0440\u0438\u0439\u0442\u0435 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f, \u0443\u0432\u0456\u043c\u043a\u043d\u0456\u0442\u044c \u0434\u043e\u0437\u0432\u0456\u043b \u0456 \u043f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c\u0441\u044f."

    const-string v1, "Android needs your permission to install updates from this app. Open settings, turn on the permission and come back."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u0434\u043e\u0437\u0432\u043e\u043b\u0443"

    const-string v1, "Open the permission settings"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0440\u0438\u0432\u0430\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u041e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0432\u0431\u0438\u043b\u043e \u0431 \u043d\u0430\u0432\u0456\u0433\u0430\u0446\u0456\u044e, \u0442\u043e\u043c\u0443 \u0437\u0430\u0432\u0435\u0440\u0448\u0456\u0442\u044c \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043a\u043d\u043e\u043f\u043a\u0443 \u0449\u0435 \u0440\u0430\u0437."

    const-string v1, "Guidance is in progress. An update would kill navigation, so finish guidance and tap the button again."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u044f\u044e\u2026"

    const-string v1, "Checking\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v1, "Check for updates"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0445\u043e\u0432\u0430\u0442\u0438"

    const-string v1, "Hide"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v1, "Update required"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0430\u0440\u0442\u0430 \u0439 \u0432\u0430\u0448\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c. \u0423\u0436\u0435 \u0440\u043e\u0437\u043f\u043e\u0447\u0430\u0442\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0443\u0434\u0435 \u0434\u043e\u0432\u0435\u0434\u0435\u043d\u043e \u0434\u043e \u043a\u0456\u043d\u0446\u044f. \u0411\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043d\u043e\u0432\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u043f\u0456\u0441\u043b\u044f \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f."

    const-string v1, "The map and your position work. Guidance that has already started will be finished. New routes can be built after the update."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0429\u0435 \u043d\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u044f\u043b\u043e\u0441\u044c."

    const-string v1, "Not checked yet."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0430: "

    const-string v1, "Last check: "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0430\u043c \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u044f\u0454 \u043d\u0430\u044f\u0432\u043d\u0456\u0441\u0442\u044c \u043d\u043e\u0432\u043e\u0457 \u0432\u0435\u0440\u0441\u0456\u0457 \u0440\u0430\u0437 \u043d\u0430 \u0434\u043e\u0431\u0443 \u0439 \u043d\u0430\u0433\u0430\u0434\u0443\u0454 \u043f\u0440\u043e \u043d\u0435\u0457 \u0440\u0430\u0437 \u043d\u0430 \u0434\u0435\u043d\u044c. \u0421\u0442\u0430\u0440\u0430 \u0432\u0435\u0440\u0441\u0456\u044f \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c."

    const-string v1, "The app checks for a new version once a day and reminds you once a day. The old version works without limits."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1 \u043c\u0456\u0441\u044f\u0446\u044c"

    const-string v1, "1 month"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3 \u043c\u0456\u0441\u044f\u0446\u0456"

    const-string v1, "3 months"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "6 \u043c\u0456\u0441\u044f\u0446\u0456\u0432"

    const-string v1, "6 months"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1 \u0440\u0456\u043a"

    const-string v1, "1 year"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u0434 \u043d\u0435 \u043f\u0456\u0434\u0445\u043e\u0434\u0438\u0442\u044c: \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0441\u0438\u043c\u0432\u043e\u043b\u0438 \u0430\u0431\u043e \u0441\u0442\u0432\u043e\u0440\u0456\u0442\u044c \u043d\u043e\u0432\u0438\u0439 \u043d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 (\u043a\u043e\u0434 \u0434\u0456\u0454 15 \u0445\u0432\u0438\u043b\u0438\u043d)."

    const-string v1, "The code does not fit: check the characters or create a new one on the old phone (the code is valid for 15 minutes)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0426\u0435 \u043a\u043e\u0434 \u0446\u044c\u043e\u0433\u043e \u0436 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430. \u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0439\u043e\u0433\u043e \u043d\u0430 \u043d\u043e\u0432\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const-string v1, "This is the code of this same phone. Enter it on the new phone."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0431\u0430\u0433\u0430\u0442\u043e \u0441\u043f\u0440\u043e\u0431. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0437\u0430 \u0433\u043e\u0434\u0438\u043d\u0443."

    const-string v1, "Too many attempts. Try in an hour."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443."

    const-string v1, "Could not transfer the subscription."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u0421\u043a\u043e\u043f\u0456\u0439\u043e\u0432\u0430\u043d\u043e"

    const-string v1, "Copied"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0441\u0442\u0432\u043e\u0440\u0438\u0442\u0438 \u043e\u043f\u043b\u0430\u0442\u0443. \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    const-string v1, "Could not create the payment. Check your internet connection and try again."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0437\u043d\u0430\u0439\u0448\u043b\u043e\u0441\u044f \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0430. \u0421\u043a\u043e\u0440\u0438\u0441\u0442\u0430\u0439\u0442\u0435\u0441\u044f QR-\u043a\u043e\u0434\u043e\u043c \u0430\u0431\u043e \u0441\u043a\u043e\u043f\u0456\u044e\u0439\u0442\u0435 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    const-string v1, "No browser found. Use the QR code or copy the link."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u043f\u043b\u0430\u0442\u0430 \u0437 \u0456\u043d\u0448\u043e\u0433\u043e \u043f\u0440\u0438\u0441\u0442\u0440\u043e\u044e"

    const-string v1, "Pay from another device"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0432\u0435\u0434\u0456\u0442\u044c \u043a\u0430\u043c\u0435\u0440\u0443 \u0456\u043d\u0448\u043e\u0433\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u043d\u0430 QR-\u043a\u043e\u0434 \u0430\u0431\u043e \u0441\u043a\u043e\u043f\u0456\u044e\u0439\u0442\u0435 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0439 \u0432\u0456\u0434\u043a\u0440\u0438\u0439\u0442\u0435 \u0439\u043e\u0433\u043e \u0432 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0456 \u043a\u043e\u043c\u043f\'\u044e\u0442\u0435\u0440\u0430. \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0437\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f \u0432 \u0446\u044c\u043e\u043c\u0443 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u043f\u0456\u0441\u043b\u044f \u043e\u043f\u043b\u0430\u0442\u0438. \u041f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0434\u0456\u0454 \u0433\u043e\u0434\u0438\u043d\u0443."

    const-string v1, "Point another phone\'s camera at the QR code, or copy the link and open it in a computer browser. The subscription appears in this app after payment. The link is valid for an hour."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "QR-\u043a\u043e\u0434 \u043e\u043f\u043b\u0430\u0442\u0438"

    const-string v1, "Payment QR code"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u043f\u0456\u044e\u0432\u0430\u0442\u0438 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f"

    const-string v1, "Copy link"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443"

    const-string v1, "Subscribe"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u043f\u043b\u0430\u0442\u0430 \u0437\u0430\u0440\u0430\u0437 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 \u0430\u0431\u043e \u0441\u043a\u043e\u0440\u0438\u0441\u0442\u0430\u0439\u0442\u0435\u0441\u044f Telegram-\u0431\u043e\u0442\u043e\u043c."

    const-string v1, "Payment is unavailable now. Try later or use the Telegram bot."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f (\u0441\u043f\u0438\u0441\u0430\u043d\u043d\u044f \u0447\u0435\u0440\u0435\u0437 \u043a\u043e\u0436\u0435\u043d \u043f\u0435\u0440\u0456\u043e\u0434)"

    const-string v1, "Auto-renewal (charged every period)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u043a\u0440\u0438\u0454\u0442\u044c\u0441\u044f \u0441\u0442\u043e\u0440\u0456\u043d\u043a\u0430 \u043e\u043f\u043b\u0430\u0442\u0438 WayForPay (\u043a\u0430\u0440\u0442\u043a\u0443 \u043c\u0438 \u043d\u0435 \u0431\u0430\u0447\u0438\u043c\u043e). \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043f\u0440\u0438\u0432\'\u044f\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0434\u043e \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443; \u043d\u0430 \u0456\u043d\u0448\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0457\u0457 \u043c\u043e\u0436\u043d\u0430 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043a\u043e\u0434\u043e\u043c (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430). \u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0441\u043a\u0430\u0441\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0442\u0430\u043c \u0441\u0430\u043c\u043e."

    const-string v1, "The WayForPay payment page will open (we do not see your card). The subscription is bound to this app; it can be moved to another phone with a code (Settings \u2192 Subscription). Auto-renewal is cancelled there too."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043f\u043b\u0430\u0442\u0438\u0442\u0438"

    const-string v1, "Pay"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "QR-\u043a\u043e\u0434"

    const-string v1, "QR code"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438"

    const-string v1, "Subscription transfer code"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043a\u043e\u0434. \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    const-string v1, "Could not get the code. Check your internet connection and try again."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0441\u0442\u0430\u043d\u043e\u0432\u0456\u0442\u044c BlindDriver \u043d\u0430 \u043d\u043e\u0432\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0456 \u0432\u0432\u0435\u0434\u0456\u0442\u044c \u0446\u0435\u0439 \u043a\u043e\u0434 \u0442\u0430\u043c: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb. \u041a\u043e\u0434 \u0434\u0456\u0454 15 \u0445\u0432\u0438\u043b\u0438\u043d \u0456 \u0441\u043f\u0440\u0430\u0446\u044e\u0454 \u043e\u0434\u0438\u043d \u0440\u0430\u0437. \u041f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0432\u0438\u043c\u043a\u043d\u0435\u0442\u044c\u0441\u044f."

    const-string v1, "Install BlindDriver on the new phone and enter this code there: Settings \u2192 Subscription \u2192 \u201cEnter transfer code\u201d. The code is valid for 15 minutes and works once. After the transfer the subscription on this phone is switched off."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u043f\u0456\u044e\u0432\u0430\u0442\u0438"

    const-string v1, "Copy"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443"

    const-string v1, "Enter transfer code"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb."

    const-string v1, "On the old phone: Settings \u2192 Subscription \u2192 \u201cShow transfer code\u201d."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u0434 (8 \u0441\u0438\u043c\u0432\u043e\u043b\u0456\u0432)"

    const-string v1, "Code (8 characters)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0435\u043d\u043e \u043d\u0430 \u0446\u0435\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d."

    const-string v1, "The subscription was transferred to this phone."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u0434 \u043f\u0440\u0438\u0439\u043d\u044f\u0442\u043e, \u0430\u043b\u0435 \u043d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u043d\u0435 \u0431\u0443\u043b\u043e \u0434\u0456\u044e\u0447\u043e\u0457 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438."

    const-string v1, "The code was accepted, but the old phone had no active subscription."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438"

    const-string v1, "Transfer"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443"

    const-string v1, "Extend subscription"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0435\u0437 Telegram: \u043e\u043f\u043b\u0430\u0442\u0430 \u0432 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0456 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0430\u0431\u043e QR-\u043a\u043e\u0434\u043e\u043c."

    const-string v1, "Without Telegram: payment in the phone browser or by QR code."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443"

    const-string v1, "Show transfer code"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f"

    const-string v1, "Cancel auto-renewal"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f?"

    const-string v1, "Cancel auto-renewal?"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0442\u043e\u0447\u043d\u0430 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0434\u0456\u044f\u0442\u0438\u043c\u0435 \u0434\u043e \u043a\u0456\u043d\u0446\u044f \u043e\u043f\u043b\u0430\u0447\u0435\u043d\u043e\u0433\u043e \u0442\u0435\u0440\u043c\u0456\u043d\u0443, \u043d\u043e\u0432\u0438\u0445 \u0441\u043f\u0438\u0441\u0430\u043d\u044c \u043d\u0435 \u0431\u0443\u0434\u0435. \u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f, \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0435 \u0447\u0435\u0440\u0435\u0437 Telegram-\u0431\u043e\u0442\u0430, \u0441\u043a\u0430\u0441\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0442\u0430\u043c (/cancel)."

    const-string v1, "The current subscription works until the end of the paid term, there will be no new charges. Auto-renewal set up through the Telegram bot is cancelled there (/cancel)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0441\u043a\u0430\u0441\u043e\u0432\u0430\u043d\u043e."

    const-string v1, "Auto-renewal cancelled."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0434\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e (\u044f\u043a\u0449\u043e \u043e\u0444\u043e\u0440\u043c\u043b\u044e\u0432\u0430\u043b\u0438 \u0447\u0435\u0440\u0435\u0437 Telegram \u2014 \u0441\u043a\u0430\u0441\u0443\u0439\u0442\u0435 \u0432 \u0431\u043e\u0442\u0456: /cancel)."

    const-string v1, "No auto-renewal was found for this app (if you subscribed through Telegram \u2014 cancel it in the bot: /cancel)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u043f\u0438\u0442 \u043d\u0430 \u0441\u043a\u0430\u0441\u0443\u0432\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u0434\u0430\u043d\u043e \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443, \u0439\u043e\u0433\u043e \u043e\u0431\u0440\u043e\u0431\u043b\u044f\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443."

    const-string v1, "The cancellation request was passed to the developer, it will be processed manually."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0441\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 \u0430\u0431\u043e \u043d\u0430\u043f\u0438\u0448\u0456\u0442\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443."

    const-string v1, "Could not cancel. Try later or write to the developer."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c."

    const-string v1, "No connection to the server."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u0438\u0448\u0438\u0442\u0438"

    const-string v1, "Keep"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0445\u043e\u0432\u0430\u0442\u0438 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u0456 \u0432\u0435\u0440\u0441\u0456\u0457"

    const-string v1, "Hide previous versions"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u0456 \u0432\u0435\u0440\u0441\u0456\u0457"

    const-string v1, "Previous versions"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438: \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440 \u0437\u0443\u043f\u0438\u043d\u043a\u0438"

    const-string v1, "Sensors: stop detector"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438: \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0434\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0456\u0432"

    const-string v1, "Sensors: turn snapping"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u0412\u0456\u043a\u043d\u043e \u0430\u043d\u0430\u043b\u0456\u0437\u0443"

    const-string v1, "Analysis window"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u0445 \u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434 \u0434\u0430\u0442\u0447\u0438\u043a\u0456\u0432 \u0430\u043d\u0430\u043b\u0456\u0437\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v1, "How many of the latest milliseconds of sensors are analyzed."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043c\u0441"

    const-string v1, "ms"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0442\u0440\u0438\u043c\u043a\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438"

    const-string v1, "Stop hold time"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0430\u0454 \u0442\u0440\u0438\u0432\u0430\u0442\u0438 \u00ab\u0442\u0438\u0448\u0430\u00bb, \u0449\u043e\u0431 \u043e\u0433\u043e\u043b\u043e\u0441\u0438\u0442\u0438 \u0437\u0443\u043f\u0438\u043d\u043a\u0443. \u041c\u0435\u043d\u0448\u0435: \u043b\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0456 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0432 \u0437\u0430\u0442\u043e\u0440\u0456, \u0431\u0456\u043b\u044c\u0448\u0435: \u0440\u0456\u0434\u0448\u0435 \u0445\u0438\u0431\u043d\u0456 \u0437\u0443\u043f\u0438\u043d\u043a\u0438."

    const-string v1, "How long the \u201cquiet\u201d must last to announce a stop. Less: catches short stops in a jam, more: fewer false stops."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0440\u0456\u0433 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u0441\u0435\u0440\u0435\u0434\u043d\u0454 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v1, "Stop threshold: mean acceleration"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0438\u0445\u0438\u0439 \u0430\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440: \u0441\u0435\u0440\u0435\u0434\u043d\u0454 |a| \u043d\u0438\u0436\u0447\u0435 \u043f\u043e\u0440\u043e\u0433\u0430."

    const-string v1, "Quiet accelerometer: mean |a| below the threshold."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043c/\u0441\u00b2"

    const-string v1, "m/s\u00b2"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0440\u0456\u0433 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u0440\u043e\u0437\u043a\u0438\u0434 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v1, "Stop threshold: acceleration spread"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0438\u0445\u0438\u0439 \u0430\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440: \u0440\u043e\u0437\u043a\u0438\u0434 |a| \u043d\u0438\u0436\u0447\u0435 \u043f\u043e\u0440\u043e\u0433\u0430."

    const-string v1, "Quiet accelerometer: |a| spread below the threshold."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0440\u0456\u0433 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f"

    const-string v1, "Stop threshold: gyroscope"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0438\u0445\u0438\u0439 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f: \u0441\u0435\u0440\u0435\u0434\u043d\u044f \u043a\u0443\u0442\u043e\u0432\u0430 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u043d\u0438\u0436\u0447\u0435 \u043f\u043e\u0440\u043e\u0433\u0430."

    const-string v1, "Quiet gyroscope: mean angular speed below the threshold."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0440\u0430\u0434/\u0441"

    const-string v1, "rad/s"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0413\u0456\u0440\u043e\u0441\u043a\u043e\u043f: \u043c\u0435\u0436\u0430 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v1, "Gyroscope: acceleration limit"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0413\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u0432\u0440\u0430\u0445\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f, \u043b\u0438\u0448\u0435 \u044f\u043a\u0449\u043e \u0441\u0435\u0440\u0435\u0434\u043d\u0454 |a| \u043d\u0435 \u0432\u0438\u0449\u0435 \u0446\u044c\u043e\u0433\u043e \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f."

    const-string v1, "The gyroscope is taken into account only if mean |a| is not above this value."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0443\u0445: \u0441\u0435\u0440\u0435\u0434\u043d\u0454 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v1, "Motion: mean acceleration"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0449\u0435 \u0446\u044c\u043e\u0433\u043e \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f (\u0430\u0431\u043e \u0440\u043e\u0437\u043a\u0438\u0434\u0443 \u0447\u0438 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u0430) \u0432\u0432\u0430\u0436\u0430\u0454\u043c\u043e, \u0449\u043e \u043f\u043e\u0457\u0445\u0430\u043b\u0438."

    const-string v1, "Above this value (or the spread or the gyroscope) we consider that you started moving."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0443\u0445: \u0440\u043e\u0437\u043a\u0438\u0434 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v1, "Motion: acceleration spread"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0443\u0445: \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f"

    const-string v1, "Motion: gyroscope"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0436\u0435\u043d\u043d\u044f \u0440\u0443\u0445\u0443"

    const-string v1, "Motion confirmation"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0430\u0454 \u0442\u0440\u0438\u043c\u0430\u0442\u0438\u0441\u044f \u00ab\u0448\u0443\u043c\u00bb, \u0449\u043e\u0431 \u043e\u0433\u043e\u043b\u043e\u0441\u0438\u0442\u0438, \u0449\u043e \u043f\u043e\u0457\u0445\u0430\u043b\u0438."

    const-string v1, "How long the \u201cnoise\u201d must last to announce that you started moving."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u0433\u0456\u043d \u043f\u0456\u0441\u043b\u044f \u0437\u0443\u043f\u0438\u043d\u043a\u0438"

    const-string v1, "Acceleration after a stop"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430 \u044f\u043a\u0438\u0439 \u0447\u0430\u0441 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u043c\u0430\u0440\u043a\u0435\u0440\u0430 \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u0434\u043e \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u043e\u0457."

    const-string v1, "How long it takes for the marker speed to return to normal."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0432\u0456\u043b\u044c\u043d\u0438\u0439 \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0440\u043e\u0437\u0433\u043e\u043d\u0443"

    const-string v1, "Slow start of acceleration"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043f\u0435\u0440\u0448\u0438\u0445 \u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434 \u0440\u043e\u0437\u0433\u0456\u043d \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u0438\u0439."

    const-string v1, "For how many of the first milliseconds acceleration is limited."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043d\u0430 \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0440\u043e\u0437\u0433\u043e\u043d\u0443"

    const-string v1, "Limit at the start of acceleration"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0427\u0430\u0441\u0442\u043a\u0430 \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u043e\u0457 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0432 \u043f\u0435\u0440\u0448\u0456 \u0441\u0435\u043a\u0443\u043d\u0434\u0438."

    const-string v1, "A fraction of normal speed in the first seconds."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0456\u043d\u0456\u043c\u0430\u043b\u044c\u043d\u0438\u0439 \u043f\u043e\u0432\u043e\u0440\u043e\u0442"

    const-string v1, "Minimum turn"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0435\u043d\u0448\u0456 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0438 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u043d\u0435 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u044e\u0442\u044c\u0441\u044f \u0434\u043b\u044f \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u043c\u0430\u0440\u043a\u0435\u0440\u0430."

    const-string v1, "Smaller turns by gyroscope are not used for snapping the marker."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u043e\u043f\u0443\u0441\u043a \u043a\u0443\u0442\u0430 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443"

    const-string v1, "Turn angle tolerance"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u043c\u043e\u0436\u0435 \u0432\u0456\u0434\u0440\u0456\u0437\u043d\u044f\u0442\u0438\u0441\u044f \u0432\u0456\u0434 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u043d\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456."

    const-string v1, "How much a turn by gyroscope may differ from the turn on the route."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0448\u0443\u043a \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u043f\u043e\u0437\u0430\u0434\u0443"

    const-string v1, "Search for a turn behind"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043c"

    const-string v1, "m"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0448\u0443\u043a \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0443"

    const-string v1, "Search for a turn ahead"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u043a\u043d\u043e \u043d\u0430\u043a\u043e\u043f\u0438\u0447\u0435\u043d\u043d\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443"

    const-string v1, "Turn accumulation window"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423\u0442\u0440\u0438\u043c\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u0434 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u043e\u043c"

    const-string v1, "Holding before a turn"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0435\u0437 GPS: \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0441\u0435\u043a\u0443\u043d\u0434 \u0447\u0435\u043a\u0430\u0442\u0438 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0436\u0435\u043d\u043d\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c, \u043f\u0435\u0440\u0448 \u043d\u0456\u0436 \u0432\u0456\u0434\u043f\u0443\u0441\u0442\u0438\u0442\u0438 \u043c\u0430\u0440\u043a\u0435\u0440 \u0456 \u0457\u0445\u0430\u0442\u0438 \u0434\u0430\u043b\u0456 \u044f\u043a \u0440\u0430\u043d\u0456\u0448\u0435."

    const-string v1, "Without GPS: how many seconds to wait for the gyroscope to confirm the turn before releasing the marker and continuing as before."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0441"

    const-string v1, "s"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c"

    const-string v1, "Leaving the route: distance"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432 \u0432\u0456\u0434 \u043b\u0456\u043d\u0456\u0457 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0432\u0432\u0430\u0436\u0430\u0454\u043c\u043e, \u0449\u043e \u0432\u0438 \u0437 \u043d\u044c\u043e\u0433\u043e \u0437\u0456\u0439\u0448\u043b\u0438."

    const-string v1, "By how many meters from the route line we consider that you left it."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u0432\u0438\u0442\u0440\u0438\u043c\u043a\u0430"

    const-string v1, "Leaving the route: hold time"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0447\u0430\u0441\u0443 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u043c\u0430\u0454 \u0431\u0443\u0442\u0438 \u0431\u0456\u043b\u044c\u0448\u043e\u044e \u0437\u0430 \u043f\u043e\u0440\u043e\u0433\u043e\u0432\u0443."

    const-string v1, "How long the distance must exceed the threshold."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0445\u0456\u0434: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c"

    const-string v1, "Fast leaving: distance"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417 GPS: \u0441\u0445\u0456\u0434 \u0437\u0430\u0440\u0430\u0445\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0448\u0432\u0438\u0434\u0448\u0435, \u044f\u043a\u0449\u043e \u0432\u0438 \u0434\u0430\u043b\u0456 \u0432\u0456\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043d\u0430 \u0441\u0442\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432 \u0456 \u0457\u0434\u0435\u0442\u0435 \u043d\u0435 \u0442\u0443\u0434\u0438, \u043a\u0443\u0434\u0438 \u0432\u0435\u0434\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442."

    const-string v1, "With GPS: leaving is counted sooner if you are this many meters from the route and heading not where the route leads."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0445\u0456\u0434: \u0440\u043e\u0437\u0431\u0456\u0436\u043d\u0456\u0441\u0442\u044c \u043a\u0443\u0440\u0441\u0443"

    const-string v1, "Fast leaving: heading divergence"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0433\u0440\u0430\u0434\u0443\u0441\u0456\u0432 \u0432\u0430\u0448 \u043a\u0443\u0440\u0441 \u043c\u0430\u0454 \u0432\u0456\u0434\u0440\u0456\u0437\u043d\u044f\u0442\u0438\u0441\u044f \u0432\u0456\u0434 \u043d\u0430\u043f\u0440\u044f\u043c\u043a\u0443 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0443."

    const-string v1, "By how many degrees your heading must differ from the route direction ahead."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0445\u0456\u0434: \u0432\u0438\u0442\u0440\u0438\u043c\u043a\u0430"

    const-string v1, "Fast leaving: hold time"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0443\u043c\u043d\u0456\u0432\u043d\u0438\u0439 GPS: \u0434\u043e\u043f\u0443\u0441\u043a \u0434\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v1, "Doubtful GPS: tolerance to the route"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0443\u043c\u043d\u0456\u0432\u043d\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f GPS (\u0441\u043b\u0430\u0431\u043a\u0435 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f, \u043c\u0430\u043b\u043e \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432) \u0431\u043b\u0438\u0436\u0447\u0430 \u0437\u0430 \u0446\u0435 \u0440\u0443\u0445\u0430\u0454 \u043c\u0430\u0440\u043a\u0435\u0440; \u0434\u0430\u043b\u0456 \u2014 \u043e\u0437\u043d\u0430\u043a\u0430 \u0441\u0445\u043e\u0434\u0443 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443. \u041d\u0435 \u043c\u0435\u043d\u0448\u0435 \u0437\u0430 \u00ab\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c\u00bb."

    const-string v1, "A doubtful GPS position (weak jamming, few satellites) closer than this moves the marker; farther \u2014 a sign of leaving the route. Not less than \u201cLeaving the route: distance\u201d."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0439\u0431\u0456\u043b\u044c\u0448\u0430 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c GPS"

    const-string v1, "Maximum GPS speed"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f GPS \u0437\u0456 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044e \u0432\u0438\u0449\u0435 \u0430\u0431\u043e \u0441\u0442\u0440\u0438\u0431\u043a\u043e\u043c, \u044f\u043a\u043e\u0433\u043e \u043d\u0435 \u043f\u0440\u043e\u0457\u0445\u0430\u0442\u0438 \u0437 \u0442\u0430\u043a\u043e\u044e \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044e, \u0432\u0456\u0434\u043a\u0438\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u044f\u043a \u0445\u0438\u0431\u043d\u0430."

    const-string v1, "A GPS position with a speed above this or a jump that cannot be driven at this speed is discarded as false."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043a\u043c/\u0433\u043e\u0434"

    const-string v1, "km/h"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u00ab\u0412\u0438 \u043f\u0440\u0438\u0431\u0443\u043b\u0438\u00bb: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u0434\u043e \u043a\u0456\u043d\u0446\u044f"

    const-string v1, "\u201cYou have arrived\u201d: distance to the end"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS: \u043c\u0456\u043d\u0456\u043c\u0430\u043b\u044c\u043d\u0438\u0439 \u043a\u0443\u0442"

    const-string v1, "U-turn without GPS: minimum angle"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0413\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u043f\u043e\u0431\u0430\u0447\u0438\u0432 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u043d\u0430 \u0442\u0430\u043a\u0438\u0439 \u043a\u0443\u0442, \u0449\u043e \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u043c\u0430\u043d\u0435\u0432\u0440\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454\u043c\u043e \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443."

    const-string v1, "The gyroscope saw a turn of an angle that does not match the route maneuver: we offer rerouting."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0440\u043e\u0457\u0445\u0430\u043b\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS"

    const-string v1, "Missed turn without GPS"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0430\u0440\u043a\u0435\u0440 \u0447\u0435\u043a\u0430\u0454 \u0431\u0456\u043b\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443, \u0430 \u043c\u0430\u0448\u0438\u043d\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0430 \u0441\u0442\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432, \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0432\u0448\u0438 \u043a\u0435\u0440\u043c\u043e: \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454\u043c\u043e \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443."

    const-string v1, "The marker waits near a turn, and the car, by sensors, has driven this many meters without turning the wheel: we offer rerouting."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS: \u0447\u0430\u0441 \u043d\u0430 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c"

    const-string v1, "U-turn without GPS: time to respond"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0441\u0435\u043a\u0443\u043d\u0434 \u0447\u0435\u043a\u0430\u0442\u0438 \u0432\u0430\u0448\u043e\u0457 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u0456, \u043f\u0435\u0440\u0448 \u043d\u0456\u0436 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u0441\u0430\u043c\u043e\u0441\u0442\u0456\u0439\u043d\u043e."

    const-string v1, "How many seconds to wait for your answer before rerouting by itself."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0430\u043c\u0435\u0440\u0430: \u043f\u043e\u043a\u0430\u0437 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456"

    const-string v1, "Camera: show on screen"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417 \u044f\u043a\u043e\u0457 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u0456 \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u043b\u0430\u0448\u043a\u0430 \u043a\u0430\u043c\u0435\u0440\u0438."

    const-string v1, "From what distance the camera tag is shown."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0430\u043c\u0435\u0440\u0430: \u0433\u043e\u043b\u043e\u0441\u043e\u0432\u0435 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0436\u0435\u043d\u043d\u044f"

    const-string v1, "Camera: voice warning"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0430\u043c\u0435\u0440\u0430: \u0441\u0438\u0433\u043d\u0430\u043b \u043f\u0440\u0438 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0435\u043d\u043d\u0456"

    const-string v1, "Camera: beep when speeding"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0430\u043c\u0435\u0440\u0430: \u0434\u043e\u043f\u0443\u0441\u043a \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0435\u043d\u043d\u044f"

    const-string v1, "Camera: speeding tolerance"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043a\u043c/\u0433\u043e\u0434 \u043c\u043e\u0436\u043d\u0430 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0438\u0442\u0438 \u043b\u0456\u043c\u0456\u0442 \u043a\u0430\u043c\u0435\u0440\u0438 \u0431\u0435\u0437 \u0441\u0438\u0433\u043d\u0430\u043b\u0443."

    const-string v1, "By how many km/h the camera limit can be exceeded without a beep."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0440\u0430\u043f\u043a\u0438 GPS \u0456 \u043c\u0435\u0440\u0435\u0436\u0456 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456"

    const-string v1, "GPS and network dots on the map"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0441\u0435\u043a\u0443\u043d\u0434 \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u043a\u0440\u0430\u043f\u043a\u0438 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u0445 \u043f\u043e\u0437\u0438\u0446\u0456\u0439: GPS (\u0437\u0435\u043b\u0435\u043d\u0430: \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u0430, \u043f\u043e\u043c\u0430\u0440\u0430\u043d\u0447\u0435\u0432\u0430: \u0441\u0443\u043c\u043d\u0456\u0432\u043d\u0430, \u0447\u0435\u0440\u0432\u043e\u043d\u0430: \u0432\u0456\u0434\u0445\u0438\u043b\u0435\u043d\u0430) \u0456 \u043c\u0435\u0440\u0435\u0436\u0456 (\u0441\u0438\u043d\u044f). \u041f\u043e\u0441\u0442\u0443\u043f\u043e\u0432\u043e \u0437\u0433\u0430\u0441\u0430\u044e\u0442\u044c. 0: \u043d\u0435 \u043f\u043e\u043a\u0430\u0437\u0443\u0432\u0430\u0442\u0438."

    const-string v1, "How many seconds the dots of the latest positions stay on the map: GPS (green: trusted, orange: doubtful, red: rejected) and network (blue). They gradually fade. 0: do not show."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u043c\u0456\u0440 \u043f\u0456\u0434\u043f\u0438\u0441\u0456\u0432 \u0432\u0443\u043b\u0438\u0446\u044c \u0456 \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432"

    const-string v1, "Size of street and house labels"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0434\u0438\u043d \u043f\u043e\u0432\u0437\u0443\u043d\u043e\u043a \u0434\u043b\u044f \u043d\u0430\u0437\u0432 \u0432\u0443\u043b\u0438\u0446\u044c \u0456 \u043d\u043e\u043c\u0435\u0440\u0456\u0432 \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456. 1 \u2014 \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 (\u043d\u0430\u0437\u0432\u0438 \u0432\u0443\u043b\u0438\u0446\u044c \u0456 \u0442\u0430\u043a \u0442\u0440\u043e\u0445\u0438 \u0437\u0431\u0456\u043b\u044c\u0448\u0435\u043d\u0456)."

    const-string v1, "One slider for street names and house numbers on the map. 1 \u2014 normal size (street names are slightly enlarged anyway)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u043c\u0456\u0440 \u0444\u0430\u0439\u043b\u0430 \u043b\u043e\u0433\u0443"

    const-string v1, "Log file size"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0441\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0440\u043e\u0437\u043c\u0456\u0440\u0443 \u0437\u0430\u043f\u0438\u0441 \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454\u0442\u044c\u0441\u044f \u0432 \u043d\u043e\u0432\u043e\u043c\u0443 \u0444\u0430\u0439\u043b\u0456."

    const-string v1, "After this size recording continues in a new file."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0411"

    const-string v1, "MB"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u043b\u043e\u0433\u0438 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456"

    const-string v1, "Keep logs on the phone"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u043e\u0433\u0438 \u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a, \u0441\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 \u0441\u0442\u0456\u043b\u044c\u043a\u0438 \u0434\u043d\u0456\u0432, \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0438\u0434\u0430\u043b\u044f\u0454 \u0441\u0430\u043c \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443 (\u043f\u043e\u0442\u043e\u0447\u043d\u0438\u0439 \u0437\u0430\u043f\u0438\u0441 \u043d\u0435 \u0447\u0456\u043f\u0430\u0454). 0 \u2014 \u043d\u0435 \u0432\u0438\u0434\u0430\u043b\u044f\u0442\u0438."

    const-string v1, "Trip logs and routes older than this many days are deleted by the app itself at launch (the current recording is not touched). 0 \u2014 do not delete."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0434\u043d"

    const-string v1, "d"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e"

    const-string v1, "Route saved"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0440\u0435\u043a \u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439: \u0443\u0432\u0456\u043c\u043a\u043d\u0456\u0442\u044c \u00ab\u0417\u0430\u043f\u0438\u0441\u00bb \u0456 \u043f\u0440\u043e\u0457\u0434\u044c\u0442\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442"

    const-string v1, "The track is empty: turn on \u201cRecord\u201d and drive the route"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v1, "Start"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0424\u0456\u043d\u0456\u0448"

    const-string v1, "Finish"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435"

    const-string v1, "My location"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static f(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u0422\u043e\u0447\u043d\u0430 \u0430\u0434\u0440\u0435\u0441\u0430 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u0430: \u0411 \u2014 \u043d\u0430 \u043a\u0456\u043d\u0446\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443. \u0429\u043e\u0431 \u0443\u0442\u043e\u0447\u043d\u0438\u0442\u0438, \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043c\u0456\u0442\u043a\u0443 \u0411 \u0456 \u043f\u0435\u0440\u0435\u0442\u044f\u0433\u043d\u0456\u0442\u044c"

    const-string v1, "The exact address was not found: B is at the end of the route. To refine, tap the B marker and drag it"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u2014 \u0443 \u043f\u043b\u0430\u0442\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 (\u043f\u0456\u0441\u043b\u044f \u043f\u0440\u043e\u0431\u043d\u043e\u0433\u043e \u043f\u0435\u0440\u0456\u043e\u0434\u0443)."

    const-string v1, "Offline address search is in the paid version (after the trial period)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u043e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0442\u0430\u043b\u043e\u0433 (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441, \u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f)"

    const-string v1, "Download an offline catalog (Settings \u2192 Offline address search, paid feature)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0429\u0435 \u043d\u0435\u043c\u0430\u0454 \u0432\u0430\u0448\u043e\u0457 \u043f\u043e\u0437\u0438\u0446\u0456\u0457: \u0432\u043a\u0430\u0436\u0456\u0442\u044c \u0442\u043e\u0447\u043a\u0443 A \u0430\u0431\u043e \u0437\u0430\u0447\u0435\u043a\u0430\u0439\u0442\u0435 GPS \u0447\u0438 \u043c\u0435\u0440\u0435\u0436\u0443"

    const-string v1, "Your position is not known yet: set point A or wait for GPS or the network"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0431\u0443\u0444\u0435\u0440\u0456 \u043d\u0435\u043c\u0430\u0454 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442"

    const-string v1, "There are no coordinates in the clipboard"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0440\u043e\u0437\u043f\u0456\u0437\u043d\u0430\u0442\u0438 \u043c\u0456\u0441\u0446\u0435 \u0432 \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u043b\u0435\u043d\u043d\u0456"

    const-string v1, "Could not recognize the place in the message"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0428\u0443\u043a\u0430\u044e \u043c\u0456\u0441\u0446\u0435\u2026"

    const-string v1, "Looking for the place\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f (\u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043c\u0435\u0440\u0435\u0436\u0443)"

    const-string v1, "Could not open the link (check the network)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u043d\u0430\u0439\u0442\u0438 \u043c\u0456\u0441\u0446\u0435"

    const-string v1, "Could not find the place"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u043b\u044f \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0437 Waze \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0432\u0430\u0448 \u043a\u043b\u044e\u0447 Mapbox (\u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439): \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u043b\u044e\u0447 Mapbox. \u0411\u0435\u0437 \u043d\u044c\u043e\u0433\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438."

    const-string v1, "A route from Waze needs your Mapbox key (free): Settings \u2192 Mapbox key. Without it the route cannot be loaded."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u044e \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze\u2026"

    const-string v1, "Loading the route from Waze\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043a\u0443 Waze: \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043c\u0435\u0440\u0435\u0436\u0443 (\u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0434\u0456\u0454, \u043f\u043e\u043a\u0438 \u0442\u0440\u0438\u0432\u0430\u0454 \u043f\u043e\u0457\u0437\u0434\u043a\u0430)"

    const-string v1, "Could not open the Waze drive: check the network (the link works while the drive lasts)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Waze \u043d\u0435 \u0432\u0456\u0434\u0434\u0430\u0432 \u043c\u0430\u0440\u0448\u0440\u0443\u0442: \u043f\u043e\u0457\u0437\u0434\u043a\u0443 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u0430\u0440\u0456\u043b\u043e"

    const-string v1, "Waze did not give the route: the drive has ended or the link is outdated"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0447\u0430\u0442\u043e\u043a (Waze)"

    const-string v1, "Start (Waze)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e"

    const-string v1, "The route from Waze is loaded"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e"

    const-string v1, "Route not found"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u0449\u043e\u0434\u0430\u0432\u043d\u043e"

    const-string v1, "Recent"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0406\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u0457 \u043f\u0440\u043e \u0432\u0438\u043f\u0443\u0441\u043a\u0438 \u043f\u043e\u043a\u0438 \u043d\u0435\u043c\u0430\u0454"

    const-string v1, "There is no release information yet"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0444\u0430\u0439\u043b \u043e\u043f\u0438\u0441\u0430\u043d\u043d\u044f \u0432\u0438\u043f\u0443\u0441\u043a\u0443"

    const-string v1, "Invalid release description file"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u044c"

    const-string v1, "No connection to the update server"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v1, "Could not check for updates"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0439\u0448\u043b\u0430 \u043d\u043e\u0432\u0430 \u0432\u0435\u0440\u0441\u0456\u044f BlindDriver"

    const-string v1, "A new version of BlindDriver is out"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f BlindDriver"

    const-string v1, "A BlindDriver update is required"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u0457 \u043f\u0440\u043e \u043d\u043e\u0432\u0443 \u0432\u0435\u0440\u0441\u0456\u044e. \u0421\u043f\u0435\u0440\u0448\u0443 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f."

    const-string v1, "There is no information about a new version. Check for updates first."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u0457 \u043f\u0440\u043e \u043d\u043e\u0432\u0443 \u0432\u0435\u0440\u0441\u0456\u044e"

    const-string v1, "There is no information about a new version"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0443 \u0441\u043a\u0430\u0441\u043e\u0432\u0430\u043d\u043e \u0430\u0431\u043e \u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f"

    const-string v1, "Installation was cancelled or failed"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u0444\u0430\u0439\u043b \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v1, "Could not save the update file"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u0444\u0430\u0439\u043b\u0430 \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043e\u044e: \u0444\u0430\u0439\u043b \u043f\u043e\u0448\u043a\u043e\u0434\u0436\u0435\u043d\u043e \u0430\u0431\u043e \u043f\u0456\u0434\u043c\u0456\u043d\u0435\u043d\u043e."

    const-string v1, "The file checksum does not match the expected one: the file is damaged or replaced."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0438\u0439 \u0444\u0430\u0439\u043b \u043d\u0435 \u0454 \u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u043c APK."

    const-string v1, "The downloaded file is not a valid APK."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0438\u0439 APK \u043d\u0430\u043b\u0435\u0436\u0438\u0442\u044c \u0456\u043d\u0448\u043e\u043c\u0443 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v1, "The downloaded APK belongs to another app."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0426\u0435 \u043d\u0435 \u043d\u043e\u0432\u0430 \u0432\u0435\u0440\u0441\u0456\u044f."

    const-string v1, "This is not a new version."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e\u043c\u0443 APK \u043d\u0435\u043c\u0430\u0454 \u043f\u0456\u0434\u043f\u0438\u0441\u0443."

    const-string v1, "The downloaded APK has no signature."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u043f\u0438\u0441 \u043d\u043e\u0432\u043e\u0457 \u0432\u0435\u0440\u0441\u0456\u0457 \u0432\u0456\u0434\u0440\u0456\u0437\u043d\u044f\u0454\u0442\u044c\u0441\u044f \u0432\u0456\u0434 \u043f\u0456\u0434\u043f\u0438\u0441\u0443 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e\u0457. \u041e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u043d\u0435 \u0431\u0443\u0434\u0435 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e: \u0432\u0438\u0434\u0430\u043b\u0456\u0442\u044c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0456 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u0456\u0442\u044c \u043d\u043e\u0432\u0438\u0439 (\u0434\u0430\u043d\u0456 \u0431\u0443\u0434\u0435 \u0432\u0442\u0440\u0430\u0447\u0435\u043d\u043e)."

    const-string v1, "The signature of the new version differs from that of the installed one. The update will not be installed: uninstall the app and install the new one (data will be lost)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BlindDriver \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e"

    const-string v1, "BlindDriver updated"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443"

    const-string v1, "App update"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 versionCode"

    const-string v1, "Invalid versionCode"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0440\u043e\u0436\u043d\u044f \u043d\u0430\u0437\u0432\u0430 \u0432\u0435\u0440\u0441\u0456\u0457"

    const-string v1, "Empty version name"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430"

    const-string v1, "Invalid checksum"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u043d\u0430 APK \u043c\u0430\u0454 \u0431\u0443\u0442\u0438 https"

    const-string v1, "The APK link must be https"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u0434\u0430\u0442\u0430 \u0432\u0438\u043f\u0443\u0441\u043a\u0443"

    const-string v1, "Invalid release date"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "}. \u0420\u0430\u0434\u0438\u043c\u043e \u043e\u043d\u043e\u0432\u0438\u0442\u0438\u0441\u044f: \u0443 \u043d\u0456\u0439 \u0432\u0438\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u043d\u044f \u0439 \u043f\u043e\u043a\u0440\u0430\u0449\u0435\u043d\u043d\u044f."

    const-string v1, "}. We recommend updating: it contains fixes and improvements."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0426\u044f \u0432\u0435\u0440\u0441\u0456\u044f \u0431\u0456\u043b\u044c\u0448\u0435 \u043d\u0435 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f. \u041e\u043d\u043e\u0432\u0456\u0442\u044c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a."

    const-string v1, "This version is no longer supported. Update the app."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0435\u0440\u0441\u0456\u044f \u0430\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u0430."

    const-string v1, "The version is up to date."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f. "

    const-string v1, "Update required. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0456\u0434\u0435\u043d\u0442\u0438\u0444\u0456\u043a\u0430\u0442\u043e\u0440 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v1, "Invalid package identifier"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0410\u0434\u0440\u0435\u0441\u0430 \u043f\u0430\u043a\u0435\u0442\u0430 \u043d\u0435 \u0437 \u0440\u0435\u043f\u043e\u0437\u0438\u0442\u043e\u0440\u0456\u044e \u0440\u0435\u043b\u0456\u0437\u0456\u0432"

    const-string v1, "The package address is not from the release repository"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v1, "Invalid package checksum"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v1, "Invalid package size"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0444\u0430\u0439\u043b \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    const-string v1, "file is too large"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f"

    const-string v1, "checksum does not match"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0431\u0430\u0437\u0430 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0430"

    const-string v1, "database is too large"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435\u0432\u0456\u0434\u043e\u043c\u0430 \u0441\u0445\u0435\u043c\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v1, "unknown package scheme"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0430"

    const-string v1, "a"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043a"

    const-string v1, "k"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439 \u043f\u0430\u043a\u0435\u0442"

    const-string v1, "empty package"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u043c\u0456\u043d\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0438\u0439 \u043f\u0430\u043a\u0435\u0442"

    const-string v1, "could not replace the old package"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u0430\u043a\u0435\u0442"

    const-string v1, "could not save the package"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u0433\u0440\u0430\u0444\u0430"

    const-string v1, "Invalid graph size"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423\u043a\u0440\u0430\u0457\u043d\u0430"

    const-string v1, "Ukraine"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f"

    const-string v1, "Downloading"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0441\u0435\u0440\u0432\u0435\u0440 \u0432\u0456\u0434\u0445\u0438\u043b\u0438\u0432 \u0434\u043e\u043a\u0430\u0447\u0443\u0432\u0430\u043d\u043d\u044f, \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437"

    const-string v1, "the server rejected resuming, try again"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0430"

    const-string v1, "Verification"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u043f\u0430\u043a\u0443\u0432\u0430\u043d\u043d\u044f"

    const-string v1, "Unpacking"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0433\u0440\u0430\u0444 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    const-string v1, "the graph is too large"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435\u0432\u0456\u0434\u043e\u043c\u0438\u0439 \u0444\u043e\u0440\u043c\u0430\u0442 \u0433\u0440\u0430\u0444\u0430"

    const-string v1, "unknown graph format"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u043c\u0456\u043d\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0438\u0439 \u0433\u0440\u0430\u0444"

    const-string v1, "could not replace the old graph"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u0433\u0440\u0430\u0444"

    const-string v1, "could not save the graph"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ". \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438\u00bb \u0449\u0435 \u0440\u0430\u0437: \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u044c\u0441\u044f."

    const-string v1, ". Tap \u201cDownload\u201d again: the download will continue."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0430\u0440\u0442\u043e\u0431\u0441\u0442\u0440\u0456\u043b\u0443"

    const-string v1, "Shelling threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0443\u043b\u0438\u0447\u043d\u0456 \u0431\u043e\u0457"

    const-string v1, "Street fighting"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0425\u0456\u043c\u0456\u0447\u043d\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    const-string v1, "Chemical threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0430\u0434\u0456\u0430\u0446\u0456\u0439\u043d\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    const-string v1, "Radiation threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0406\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u044f"

    const-string v1, "Information"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043c. "

    const-string v1, "city "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043c\u0456\u0441\u0442\u043e "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u0431\u0456\u0439 \u0442\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v1, "All clear"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u0431\u0456\u0439 \u0442\u0440\u0438\u0432\u043e\u0433\u0438 \u0443 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456. \u041f\u043e\u0440\u0443\u0447 \u0442\u0440\u0438\u0432\u043e\u0433\u0430 \u0442\u0440\u0438\u0432\u0430\u0454"

    const-string v1, "All clear in your district. The alert continues nearby"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0442\u0440\u0430 \u0437\u0430\u043a\u0456\u043d\u0447\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434"

    const-string v1, "The trial period ends tomorrow"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043a\u0430\u043c\u0435\u0440\u0438 \u0439 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438 \u043d\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456, \u0430\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a, \u043e\u0444\u043b\u0430\u0439\u043d-\u0440\u0435\u0436\u0438\u043c \u0456 \u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0434\u043b\u044f Waze/\u043a\u0430\u0440\u0442"

    const-string v1, "cameras and traffic lights on the route, trip analytics, offline mode and position sharing for Waze/maps"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430."

    const-string v1, "Subscribe: Settings \u2192 Subscription."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u0438 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c \u043c\u043e\u0436\u043d\u0430 \u0432 Telegram-\u0431\u043e\u0442\u0456: \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043d\u0430 1, 3, 6 \u0430\u0431\u043e 12 \u043c\u0456\u0441\u044f\u0446\u0456\u0432 (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438\u00bb)."

    const-string v1, "You can continue without limits in the Telegram bot: a subscription for 1, 3, 6 or 12 months (Settings \u2192 Subscription \u2192 \u201cSubscribe\u201d)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430."

    const-string v1, "Subscribe: Settings \u2192 Subscription."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438\u00bb (Telegram-\u0431\u043e\u0442)."

    const-string v1, "Subscribe: Settings \u2192 Subscription \u2192 \u201cSubscribe\u201d (Telegram bot)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430"

    const-string v1, "Developer replies"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 BlindDriver"

    const-string v1, "BlindDriver developer\'s reply"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "(\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0434\u043e \u0442\u0456\u0454\u0457 \u0441\u0430\u043c\u043e\u0457 \u0442\u043e\u0447\u043a\u0438 \u0411 \u2014 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e, \u0432\u0438\u0442\u0440\u0430\u0447\u0430\u0454 \u043b\u0456\u043c\u0456\u0442 \u043b\u0438\u0448\u0435 \u043d\u043e\u0432\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442)"

    const-string v1, "(rerouting to the same point B is free, only a new route uses up the limit)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456: \u0431\u0435\u0437 \u043a\u0430\u043c\u0435\u0440 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044e \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0439 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456, \u043d\u0435 \u0431\u0456\u043b\u044c\u0448\u0435 "

    const-string v1, "On the free plan: no speed cameras or traffic lights on the screen, no more than "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u0456 \u0430\u0434\u0440\u0435\u0441, \u0431\u0435\u0437 \u043e\u0444\u043b\u0430\u0439\u043d-\u0440\u0435\u0436\u0438\u043c\u0443 (\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0439 \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443)"

    const-string v1, "saved routes and addresses, no offline mode (routes and address search without internet)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0443\u0432\u0448\u0438 \u043a\u043d\u043e\u043f\u043a\u0443 \u043d\u0438\u0436\u0447\u0435, \u0432\u0438 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u0435 \u043d\u0430 \u043d\u0430\u0448 \u0441\u0435\u0440\u0432\u0435\u0440 \u043c\u043e\u0434\u0435\u043b\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0439 \u043d\u0435\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0432\u0456\u0434\u0431\u0438\u0442\u043e\u043a \u0439\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e ID "

    const-string v1, "By tapping the button below you send our server the phone model and an irreversible fingerprint of its system ID "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "(\u0445\u0435\u0448 ANDROID_ID) \u2014 \u043b\u0438\u0448\u0435 \u0449\u043e\u0431 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u043b\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v1, "(hash of ANDROID_ID) \u2014 only so the subscription can be restored after reinstalling the app."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f\u043c Google Play \u0441\u043f\u0438\u0441\u0443\u0454 \u043e\u043f\u043b\u0430\u0442\u0443 \u0449\u043e\u043c\u0456\u0441\u044f\u0446\u044f \u0447\u0438 \u0449\u043e\u0440\u043e\u043a\u0443, \u0434\u043e\u043a\u0438 \u0432\u0438 \u043d\u0435 \u0441\u043a\u0430\u0441\u0443\u0454\u0442\u0435 (\u0441\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u0434\u044c-\u043a\u043e\u043b\u0438, Pro \u0434\u0456\u0454 \u0434\u043e \u043a\u0456\u043d\u0446\u044f "

    const-string v1, "With auto-renewal Google Play charges monthly or yearly until you cancel (you can cancel any time, Pro works until the end of "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043e\u043f\u043b\u0430\u0447\u0435\u043d\u043e\u0433\u043e \u0441\u0442\u0440\u043e\u043a\u0443). \u0411\u0435\u0437 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u2014 \u0440\u0430\u0437\u043e\u0432\u0430 \u043e\u043f\u043b\u0430\u0442\u0430 \u0437\u0430 \u043c\u0456\u0441\u044f\u0446\u044c \u0447\u0438 \u0440\u0456\u043a, \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454\u0442\u0435 \u0441\u0430\u043c\u0456."

    const-string v1, "the paid term). Without auto-renewal \u2014 a one-time payment for a month or a year, you renew yourself."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u043e\u0432\u0430 \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u0440\u0430\u0445\u0443\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u044e \u043c\u0430\u0448\u0438\u043d\u0438 \u0437\u0430 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438: \u043f\u043e\u0445\u0438\u0431\u043a\u0430 \u043f\u0456\u0434 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f\u043c \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0432\u0434\u0432\u0456\u0447\u0456 \u043c\u0435\u043d\u0448\u0430, "

    const-string v1, "The new no-GPS guidance computes the car position on the road map of Ukraine: the error under jamming is about half as large, "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0432\u0430\u0442\u0438 \u043a\u0440\u0430\u0449\u0435 \u0447\u0435\u0440\u0435\u0437 Wi-Fi.\n\n"

    const-string v1, "Better to download over Wi-Fi.\n\n"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e, \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u0434\u044c-\u043a\u043e\u043b\u0438: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438."

    const-string v1, "Until the graph is downloaded, the previous guidance logic works. You can download it any time: Settings \u2192 Map and offline \u2192 Offline routes."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u043c\u0456\u0441\u0442\u044f\u0442\u044c \u0432\u0430\u0448 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0456 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438, \u0442\u043e\u0431\u0442\u043e \u0446\u0435 \u043f\u0435\u0440\u0441\u043e\u043d\u0430\u043b\u044c\u043d\u0456 \u0434\u0430\u043d\u0456. \u0412\u0438 \u0431\u0430\u0447\u0438\u0442\u0435, \u0449\u043e \u0441\u0430\u043c\u0435 \u043f\u0456\u0434\u0435 (\u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u0429\u043e \u0431\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e\u00bb).\n\n"

    const-string v1, "Trip logs contain your route and coordinates, so they are personal data. You see exactly what will be sent (the \u201cWhat will be sent\u201d button).\n\n"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u043d\u0456 \u043e\u0442\u0440\u0438\u043c\u0443\u0454 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a BlindDriver \u043b\u0438\u0448\u0435 \u0449\u043e\u0431 \u043f\u043e\u043a\u0440\u0430\u0449\u0438\u0442\u0438 \u043d\u0430\u0432\u0456\u0433\u0430\u0446\u0456\u044e. \u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0444\u0430\u0439\u043b\u0438 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f 90 \u0434\u043d\u0456\u0432, \u043f\u043e\u0442\u0456\u043c \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0456\u043b\u044c\u043a\u0438 \u0437\u0432\u0435\u0434\u0435\u043d\u0430 "

    const-string v1, "The data is received by the BlindDriver developer only to improve navigation. On the server the files are kept for 90 days, then only summary "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u044f \u0431\u0435\u0437 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442 \u0456 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u044f. \u041e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0439 \u043a\u0456\u043d\u0446\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0438 (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c 300 \u043c) \u043f\u0440\u0438\u0431\u0438\u0440\u0430\u0454 \u0437 \u043b\u043e\u0433\u0443 \u0434\u0456\u043c \u0456 \u0440\u043e\u0431\u043e\u0442\u0443; \u0447\u0430\u0441 \u0437\u0430\u043f\u0438\u0441\u0443 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f.\n\n"

    const-string v1, "information without coordinates and comment remains. Trimming the start and end of the trip (300 m by default) removes home and work from the log; the recording time stays."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0429\u043e\u0431 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0435, \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u0442\u0435 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 (Telegram @Blind_Driver_bot) \u0456 \u043d\u0430\u0437\u0432\u0456\u0442\u044c \u043d\u043e\u043c\u0435\u0440 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    const-string v1, "To delete what was sent, tell the developer (Telegram @Blind_Driver_bot) and name the sending number."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0435\u0437 GPS \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0440\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438: \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043f\u0435\u0440\u0435\u0431\u0438\u0440\u0430\u0454 \u0441\u043e\u0442\u043d\u0456 \u043c\u043e\u0436\u043b\u0438\u0432\u0438\u0445 \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u044c \u043c\u0430\u0448\u0438\u043d\u0438 \u043d\u0430 \u0434\u043e\u0440\u043e\u0433\u0430\u0445 \u0456 \u0432\u0456\u0434\u043a\u0438\u0434\u0430\u0454 \u0442\u0456, "

    const-string v1, "Without GPS the position is computed on the road map of Ukraine: the phone tries hundreds of possible car positions on roads and discards those "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0449\u043e \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f \u0437 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0430\u043c\u0438 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u0456 \u0437 \u043c\u0435\u0440\u0435\u0436\u0435\u044e. \u041d\u0430 \u043d\u0430\u0448\u0438\u0445 \u0442\u0435\u0441\u0442\u0430\u0445 \u043f\u043e\u0445\u0438\u0431\u043a\u0430 \u0431\u0435\u0437 GPS \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0432\u0434\u0432\u0456\u0447\u0456 \u043c\u0435\u043d\u0448\u0430, \u0445\u0438\u0431\u043d\u0438\u0445 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043c\u0435\u043d\u0448\u0435. "

    const-string v1, "that do not match the turns by gyroscope and the network. In our tests the error without GPS is about half as large, there are fewer false \u201cLooks like you left the route\u201d. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0438\u0439 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 (\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438). \u0411\u0435\u0437 \u0433\u0440\u0430\u0444\u0430 \u0430\u0431\u043e \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u2014 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. "

    const-string v1, "A downloaded road graph is required (Map and offline \u2192 Offline routes). Without the graph or when off \u2014 the previous guidance logic. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u042f\u043a\u0449\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u0441\u0442\u0438\u0433\u0430\u0454 \u0440\u0430\u0445\u0443\u0432\u0430\u0442\u0438, \u0432\u0438\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0430."

    const-string v1, "If the phone cannot keep up with the computation, it turns off by itself."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439: \u043f\u043e\u043a\u0438 \u0442\u0438\u043f\u043e\u0432\u0456 \u043f\u043e\u0440\u043e\u0433\u0438, \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u0456 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043f\u043e\u0457\u0437\u0434\u043a\u0430\u0445. \u0412\u0447\u0438\u0442\u044c\u0441\u044f \u043f\u0456\u0434 \u0432\u0430\u0448\u0443 \u043c\u0430\u0448\u0438\u043d\u0443 \u0439 \u0442\u0440\u0438\u043c\u0430\u0447, "

    const-string v1, "Automatic: for now typical thresholds verified on recorded trips. It learns your car and mount, "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c; \u0440\u0430\u0434\u0456\u0443\u0441 \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u00ab\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433\u00bb."

    const-string v1, "On by default; the radius is changed on the \u201cSend log\u201d screen."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438 (OpenStreetMap, \u0440\u0443\u0448\u0456\u0439 GraphHopper). \u0411\u0435\u0437 \u0437\u0430\u0442\u043e\u0440\u0456\u0432, \u0437\u043d\u0430\u043a\u0456\u0432 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0456 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432, "

    const-string v1, "Builds routes without internet using the road graph of Ukraine (OpenStreetMap, GraphHopper engine). No traffic, speed-limit signs or traffic lights, "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043b\u0438\u0448\u0435 \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044c. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u044f\u043a \u0440\u0430\u043d\u0456\u0448\u0435 (Mapbox \u0430\u0431\u043e OSRM, \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438), \u0430 \u0433\u0440\u0430\u0444 \u043f\u0456\u0434\u0445\u043e\u043f\u043b\u044e\u0454, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u0441\u0435\u0440\u0432\u0456\u0441 \u043d\u0435 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0432. "

    const-string v1, "car only. With internet routes are built as before (Mapbox or OSRM, with traffic), and the graph takes over when there is no internet or the online service did not answer. Rerouting during guidance works offline too. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0442\u0435\u0436 \u043f\u0440\u0430\u0446\u044e\u0454 \u043e\u0444\u043b\u0430\u0439\u043d. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0432\u0435\u043b\u0438\u043a\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi."

    const-string v1, "Rerouting during guidance works offline too. Downloading a large file: better over Wi-Fi."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0448\u0443\u043a \u0432\u0443\u043b\u0438\u0446\u044c, \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432, \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u0438\u0445 \u043f\u0443\u043d\u043a\u0442\u0456\u0432 \u0456 \u043c\u0456\u0441\u0446\u044c \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0437\u0430 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u043e\u043c, \u0437\u0456\u0431\u0440\u0430\u043d\u0438\u043c \u0437 OpenStreetMap. \u041a\u0430\u0442\u0430\u043b\u043e\u0433\u0438 \u043f\u043e \u043e\u0431\u043b\u0430\u0441\u0442\u044f\u0445, \u043a\u043e\u0436\u0435\u043d \u0432\u0456\u0434 "

    const-string v1, "Search for streets, houses, towns and places without internet using a catalog built from OpenStreetMap. Catalogs by region, each from "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u043e \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u0435\u0441\u044f\u0442\u043a\u0456\u0432 \u041c\u0411: \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u043b\u0438\u0448\u0435 \u0442\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456, \u0434\u0435 \u0432\u0438 \u0431\u0443\u0432\u0430\u0454\u0442\u0435. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0439 \u0434\u0430\u043b\u0456 \u0434\u0430\u0454 \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a; \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u0456\u0434\u043a\u0430\u0437\u0443\u0454, "

    const-string v1, "a few to a few dozen MB: download only the regions you visit. With internet online search keeps giving suggestions; the catalog helps "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0437\u043d\u0430\u0439\u0448\u043e\u0432. \u0423 \u0441\u0456\u043b\u044c\u0441\u044c\u043a\u0456\u0439 \u043c\u0456\u0441\u0446\u0435\u0432\u043e\u0441\u0442\u0456 \u0430\u0434\u0440\u0435\u0441\u0438 \u0432 OpenStreetMap \u043f\u043e\u0432\u043d\u0456 \u0433\u0456\u0440\u0448\u0435, \u043d\u0456\u0436 \u0443 \u043c\u0456\u0441\u0442\u0430\u0445."

    const-string v1, "when there is no internet or online search found nothing. In rural areas addresses in OpenStreetMap are less complete than in cities."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u0430\u0440\u0442\u0430 \u0431\u0435\u0440\u0435\u0442\u044c\u0441\u044f \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 (OpenFreeMap; \u043a\u043b\u044e\u0447 \u043d\u0435 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d, Mapbox \u0434\u043b\u044f \u043a\u0430\u0440\u0442\u0438 \u043d\u0435 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f). \u0429\u043e\u0431 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043a\u0430\u0440\u0442\u0430 \u043d\u0435 \u0437\u043d\u0438\u043a\u0430\u043b\u0430, "

    const-string v1, "The map comes from the internet (OpenFreeMap; no key needed, Mapbox is not used for the map). So that the map does not disappear on the road without internet, "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0457\u0457 \u043c\u043e\u0436\u043d\u0430 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456. \u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u0456 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043e\u0434\u043d\u0430\u043a\u043e\u0432\u043e \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c; \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u0436\u0435 \u043f\u043e\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u0438\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u043f\u0440\u0430\u0446\u044e\u0454."

    const-string v1, "it can be stored on the phone. Routes, address search and rerouting still do not work without internet; guidance along an already built route works."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u043b\u0438 GPS \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u0439\u043e\u0433\u043e \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e, \u0456\u043d\u0448\u0456 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0438 \u043e\u0442\u0440\u0438\u043c\u0443\u044e\u0442\u044c \u043f\u043e\u0437\u0438\u0446\u0456\u044e BlindDriver (\u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a + \u043c\u0435\u0440\u0435\u0436\u0430) \u0437\u0430\u043c\u0456\u0441\u0442\u044c \u00ab\u043d\u0435\u043c\u0430\u0454 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432\u00bb. "

    const-string v1, "When GPS is absent or jammed, other apps receive the BlindDriver position (dead reckoning + network) instead of \u201cno satellites\u201d. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u043b\u0438 GPS \u0443 \u043d\u043e\u0440\u043c\u0456 \u2014 \u0431\u0430\u0447\u0430\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS. \u041f\u0440\u0430\u0446\u044e\u0454, \u043f\u043e\u043a\u0438 BlindDriver \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438\u0439 \u0430\u0431\u043e \u0432\u0435\u0434\u0435."

    const-string v1, "When GPS is fine they see real GPS. Works while BlindDriver is open or guiding."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043b\u044e\u0447 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u043c (Android Keystore) \u043b\u0438\u0448\u0435 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0439 \u043f\u0435\u0440\u0435\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0456\u043b\u044c\u043a\u0438 \u0432 \u0437\u0430\u043f\u0438\u0442\u0430\u0445 \u0434\u043e Mapbox. "

    const-string v1, "The key is stored encrypted (Android Keystore) only on this phone and is sent only in requests to Mapbox. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0442\u0432\u043e\u0440\u0438\u0442\u0438 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439 \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447: \u043e\u0431\u043b\u0456\u043a\u043e\u0432\u0438\u0439 \u0437\u0430\u043f\u0438\u0441 Mapbox \u2192 Access tokens. \u0421\u0435\u043a\u0440\u0435\u0442\u043d\u0456 \u043a\u043b\u044e\u0447\u0456 (sk.\u2026) \u043d\u0435 \u043f\u0456\u0434\u0445\u043e\u0434\u044f\u0442\u044c."

    const-string v1, "Create a free public key: Mapbox account \u2192 Access tokens. Secret keys (sk.\u2026) do not work."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a (\u043f\u043e\u0437\u0438\u0446\u0456\u044f, \u0434\u0430\u0442\u0447\u0438\u043a\u0438, \u043f\u043e\u0434\u0456\u0457) \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456, \u0434\u043e\u043a\u0438 \u0432\u0438 \u0441\u0430\u043c\u0456 \u0457\u0445 \u043d\u0435 \u043d\u0430\u0434\u0456\u0448\u043b\u0435\u0442\u0435. "

    const-string v1, "Trip logs (position, sensors, events) are stored only on the phone until you send them yourself. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0432\u0438\u043f\u0443\u0449\u0435\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0456\u0432 \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e, \u0439\u043e\u0433\u043e \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u0435 \u0432\u0438 (\u043a\u043d\u043e\u043f\u043a\u0430 REC). "

    const-string v1, "In the released version log recording is off by default, you turn it on (the REC button). "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043b\u044e\u0447 Mapbox \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u043c \u0456 \u043d\u0456\u043a\u0443\u0434\u0438 \u043d\u0435 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u044c\u0441\u044f, \u043a\u0440\u0456\u043c \u0437\u0430\u043f\u0438\u0442\u0456\u0432 \u0434\u043e Mapbox.\n\n"

    const-string v1, "The Mapbox key is stored encrypted and is sent nowhere except in requests to Mapbox.\n\n"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "\u0414\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438 \u0439 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u044c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0440\u0435\u0454\u0441\u0442\u0440\u0443\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u0430\u0448\u043e\u043c\u0443 \u0441\u0435\u0440\u0432\u0435\u0440\u0456: \u0432\u0438\u043f\u0430\u0434\u043a\u043e\u0432\u0438\u0439 ID \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438 (\u043d\u0438\u0436\u0447\u0435), "

    const-string v1, "To verify the subscription and updates the app registers on our server: a random installation ID (below), "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0432\u0435\u0440\u0441\u0456\u0457 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u0439 Android, \u0434\u0430\u0442\u0430 \u043f\u0435\u0440\u0448\u043e\u0433\u043e \u0437\u0430\u043f\u0443\u0441\u043a\u0443. \u041d\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457, \u043d\u0456 \u0456\u043c\u0435\u043d\u0456, \u043d\u0456 \u043d\u043e\u043c\u0435\u0440\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430. "

    const-string v1, "the app and Android versions, the date of first launch. No position, no name, no phone number. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041c\u043e\u0434\u0435\u043b\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0439 \u043d\u0435\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0432\u0456\u0434\u0431\u0438\u0442\u043e\u043a \u0439\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e ID \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u044e\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u043a\u043e\u043b\u0438 \u0432\u0438 \u0441\u0430\u043c\u0456 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u0454\u0442\u0435 "

    const-string v1, "The phone model and an irreversible fingerprint of its system ID are sent only when you yourself tap "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438\u00bb \u0447\u0438 \u00ab\u0412\u0456\u0434\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443\u00bb (\u0449\u043e\u0431 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u043b\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f)."

    const-string v1, "\u201cSubscribe\u201d or \u201cRestore subscription\u201d (so that the subscription can be restored after reinstalling)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0431\u0443\u0434\u0435 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u043b\u043e\u0433\u0438, \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0443 \u0434\u043e Telegram \u0456 \u0432\u0430\u0448\u0456 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0438 (\u0442\u0435\u043b\u0435\u0444\u043e\u043d, e-mail). "

    const-string v1, "On the server the sent logs, the Telegram binding and your contacts (phone, e-mail) will be deleted. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u042f\u043a\u0449\u043e \u0443 \u0432\u0430\u0441 \u0454 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430, \u0432\u043e\u043d\u0430 \u0431\u0443\u0434\u0435 \u0432\u0442\u0440\u0430\u0447\u0435\u043d\u0430 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0430 \u0456\u043d\u0448\u0438\u0445 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430\u0445."

    const-string v1, "If you have a subscription, it will be lost on this and other phones."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0432 Pro. \u041f\u0440\u043e\u0431\u0456\u0433, \u0447\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0439 \u043e\u0441\u043e\u0431\u0438\u0441\u0442\u0438\u0439 \u043a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442 \u0437\u0430\u0442\u043e\u0440\u0456\u0432 \u0443\u0436\u0435 \u0440\u0430\u0445\u0443\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u2014 "

    const-string v1, "Available in Pro. Distance, travel time and the personal traffic coefficient are already computed on the phone \u2014 "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e \u0432\u0438 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0435 \u0457\u0445 \u0442\u0443\u0442 \u043e\u0434\u0440\u0430\u0437\u0443, \u0440\u0430\u0437\u043e\u043c \u0437 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u0456\u043c\u0438 \u0442\u0438\u0436\u043d\u044f\u043c\u0438."

    const-string v1, "with a subscription you will see them here at once, along with previous weeks."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u00ab\u0423 \u0434\u043e\u0440\u043e\u0437\u0456\u00bb \u2014 \u0447\u0430\u0441 \u0440\u0443\u0445\u0443; \u00ab\u043d\u0430 \u0441\u0442\u043e\u044f\u043d\u0446\u0456\u00bb \u2014 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 (\u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u0437\u0430\u0442\u043e\u0440\u0438, \u043a\u043e\u0440\u043e\u0442\u043a\u0435 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f). "

    const-string v1, "\u201cDriving\u201d is movement time; \u201cparked\u201d is stops during a trip (traffic lights, jams, short waiting). "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0443\u043f\u0438\u043d\u043a\u0430 \u0434\u043e\u0432\u0448\u0430 \u0437\u0430 10 \u0445\u0432\u0438\u043b\u0438\u043d \u0432\u0432\u0430\u0436\u0430\u0454\u0442\u044c\u0441\u044f \u043a\u0456\u043d\u0446\u0435\u043c \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0439 \u043d\u0435 \u0440\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v1, "A stop longer than 10 minutes counts as the end of the trip and is not counted."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0440\u0430\u0437\u0456\u0432 \u0434\u043e\u0432\u0448\u0435 \u0432\u0438 \u043d\u0430\u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u0457\u0434\u0435\u0442\u0435, \u043d\u0456\u0436 \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0454 \u043b\u0456\u043c\u0456\u0442 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456. \u0420\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0437\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u0437\u0456 "

    const-string v1, "How many times longer you actually drive than the speed limit allows. Computed during guidance along a route with "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0437\u043d\u0430\u043a\u0430\u043c\u0438 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f (\u043a\u043b\u044e\u0447 Mapbox), \u0442\u0456\u043b\u044c\u043a\u0438 \u043f\u0456\u0441\u043b\u044f 50 \u043c \u0432\u0456\u0434 \u0441\u0442\u0430\u0440\u0442\u0443 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u2014 \u0449\u043e\u0431 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f \u043f\u0430\u0441\u0430\u0436\u0438\u0440\u0430 \u0447\u0438 \u043f\u0440\u043e\u043f\u0443\u0441\u043a \u043c\u0430\u0448\u0438\u043d\u0438 "

    const-string v1, "limit signs (Mapbox key), only after 50 m from the trip start \u2014 so that waiting for a passenger or letting a car pass "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0435 \u0432\u0432\u0430\u0436\u0430\u043b\u0438\u0441\u044c \u0437\u0430\u0442\u043e\u0440\u043e\u043c. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043a\u043b\u0456\u0442\u0438\u043d\u043a\u0443, \u0449\u043e\u0431 \u0432\u043f\u0438\u0441\u0430\u0442\u0438 \u0441\u0432\u043e\u0454 \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f."

    const-string v1, "is not counted as a jam. Tap the cell to enter your own value."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0440\u0430\u0437\u0456\u0432 \u0434\u043e\u0432\u0448\u0435 \u0432\u0438 \u043d\u0430\u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u0434\u043e\u0457\u0436\u0434\u0436\u0430\u0454\u0442\u0435, \u043d\u0456\u0436 \u043e\u0431\u0456\u0446\u044f\u0454 Mapbox (\u0431\u0435\u0437 \u0441\u0442\u043e\u044f\u043d\u043e\u043a \u0434\u043e\u0432\u0448\u0435 2 \u0445\u0432\u0438\u043b\u0438\u043d). \u041d\u0435\u044e \u043c\u043d\u043e\u0436\u0438\u0442\u044c\u0441\u044f \u0447\u0430\u0441 "

    const-string v1, "How many times longer you actually arrive than Mapbox promises (without stops longer than 2 minutes). It multiplies the time "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0443 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0430\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0439 \u0437\u0430\u043b\u0438\u0448\u043e\u043a \u0447\u0430\u0441\u0443 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. Mapbox: \u00d7"

    const-string v1, "in route options and the remaining time during guidance. Mapbox: \u00d7"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u0440\u0430\u0445\u043e\u0432\u0430\u043d\u0435: \u00d7"

    const-string v1, "Computed: \u00d7"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0432\u0435\u0434\u0456\u0442\u044c \u043a\u0430\u043c\u0435\u0440\u0443 \u0456\u043d\u0448\u043e\u0433\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u043d\u0430 QR-\u043a\u043e\u0434 \u0430\u0431\u043e \u0441\u043a\u043e\u043f\u0456\u044e\u0439\u0442\u0435 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0439 \u0432\u0456\u0434\u043a\u0440\u0438\u0439\u0442\u0435 \u0439\u043e\u0433\u043e \u0432 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0456 \u043a\u043e\u043c\u043f\'\u044e\u0442\u0435\u0440\u0430. "

    const-string v1, "Point another phone\'s camera at the QR code, or copy the link and open it in a computer browser. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0437\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f \u0432 \u0446\u044c\u043e\u043c\u0443 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u043f\u0456\u0441\u043b\u044f \u043e\u043f\u043b\u0430\u0442\u0438. \u041f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0434\u0456\u0454 \u0433\u043e\u0434\u0438\u043d\u0443."

    const-string v1, "The subscription appears in this app after payment. The link is valid for an hour."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u043a\u0440\u0438\u0454\u0442\u044c\u0441\u044f \u0441\u0442\u043e\u0440\u0456\u043d\u043a\u0430 \u043e\u043f\u043b\u0430\u0442\u0438 WayForPay (\u043a\u0430\u0440\u0442\u043a\u0443 \u043c\u0438 \u043d\u0435 \u0431\u0430\u0447\u0438\u043c\u043e). \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043f\u0440\u0438\u0432\'\u044f\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0434\u043e \u0446\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443; "

    const-string v1, "The WayForPay payment page will open (we do not see your card). The subscription is bound to this app; "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043d\u0430 \u0456\u043d\u0448\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0457\u0457 \u043c\u043e\u0436\u043d\u0430 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043a\u043e\u0434\u043e\u043c (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430). \u0410\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u0441\u043a\u0430\u0441\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0442\u0430\u043c \u0441\u0430\u043c\u043e."

    const-string v1, "it can be moved to another phone with a code (Settings \u2192 Subscription). Auto-renewal is cancelled there too."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0441\u0442\u0430\u043d\u043e\u0432\u0456\u0442\u044c BlindDriver \u043d\u0430 \u043d\u043e\u0432\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0456 \u0432\u0432\u0435\u0434\u0456\u0442\u044c \u0446\u0435\u0439 \u043a\u043e\u0434 \u0442\u0430\u043c: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb. "

    const-string v1, "Install BlindDriver on the new phone and enter this code there: Settings \u2192 Subscription \u2192 \u201cEnter transfer code\u201d. "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041a\u043e\u0434 \u0434\u0456\u0454 15 \u0445\u0432\u0438\u043b\u0438\u043d \u0456 \u0441\u043f\u0440\u0430\u0446\u044e\u0454 \u043e\u0434\u0438\u043d \u0440\u0430\u0437. \u041f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0432\u0438\u043c\u043a\u043d\u0435\u0442\u044c\u0441\u044f."

    const-string v1, "The code is valid for 15 minutes and works once. After the transfer the subscription on this phone is switched off."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0456\u0434\u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457"

    const-string v1, "Position tracking"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u2026"

    const-string v1, "Preparing\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v1, "Position on the map without a route"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u043f\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v1, "Route guidance"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, " \u00b7 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v1, " \u00b7 off route"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0443\u043f\u0438\u043d\u0438\u0442\u0438"

    const-string v1, "Stop"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0456 \u0442\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v1, "Air raid alerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0430 \u0442\u0440\u0438\u0432\u043e\u0433\u0430"

    const-string v1, "Air raid alert"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0435: "

    const-string v1, "Where: "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438 \u0432 \u0440\u0430\u0439\u043e\u043d\u0456: "

    const-string v1, "You are in the district: "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0447\u0430\u0442\u043e\u043a: "

    const-string v1, "Start: "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0430\u043d\u0456 ukrainealarm.com, \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e "

    const-string v1, "Data from ukrainealarm.com, updated "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, " \u00b7 \u0437 "

    const-string v1, " \u00b7 since "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0414\u0440\u043e\u043d\u043e\u0432\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    const-string v1, "Drone threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0430\u043a\u0435\u0442\u043d\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    const-string v1, "Missile threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0430\u043b\u0456\u0441\u0442\u0438\u0447\u043d\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    const-string v1, "Ballistic missile threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0431\u0430\u043b\u0456\u0441\u0442\u0438\u043a\u0438"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0440\u0430\u043a\u0435\u0442\u043d\u043e\u0433\u043e \u0443\u0434\u0430\u0440\u0443"

    const-string v1, "Missile strike threat"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j(Ljava/util/HashMap;)V
    .locals 3

    const-string v0, "\u041c\u043e\u0434\u0435\u043c ZTE: \u0432\u0435\u0436\u0430 \u0434\u043b\u044f \u0440\u0430\u0439\u043e\u043d\u0443 (debug)"

    const-string v1, "ZTE modem: tower for the area (debug)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u042f\u043a\u0449\u043e \u043f\u043b\u0430\u043d\u0448\u0435\u0442 \u043f\u0456\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0434\u043e Wi-Fi USB-\u043c\u043e\u0434\u0435\u043c\u0430 ZTE (F30 Pro), \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0447\u0438\u0442\u0430\u0454 \u0437 \u0439\u043e\u0433\u043e \u0432\u0435\u0431\u0456\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441\u0443 \u043d\u043e\u043c\u0435\u0440 \u0432\u0435\u0436\u0456 LTE: \u0443 \u043c\u043e\u0434\u0435\u043c\u0430 \u043d\u043e\u0440\u043c\u0430\u043b\u044c\u043d\u0430 \u0440\u0435\u0454\u0441\u0442\u0440\u0430\u0446\u0456\u044f \u0432 \u043c\u0435\u0440\u0435\u0436\u0456, \u043d\u0430 \u0432\u0456\u0434\u043c\u0456\u043d\u0443 \u0432\u0456\u0434 \u0432\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u043e\u0433\u043e \u043c\u043e\u0434\u0435\u043c\u0430 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438. \u0426\u0435 \u0434\u0430\u0454 \u0440\u0430\u0439\u043e\u043d \u0437 \u0442\u043e\u0447\u043d\u0456\u0441\u0442\u044e 1\u201320 \u043a\u043c (\u0434\u043b\u044f \u0441\u0442\u0430\u0440\u0442\u0443 \u043f\u0440\u0438 \u043f\u0456\u0434\u043c\u0456\u043d\u0456 GPS \u0456 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0438 \u043d\u0430 \u043f\u0456\u0434\u043c\u0456\u043d\u0443). \u041b\u0438\u0448\u0435 \u0447\u0438\u0442\u0430\u043d\u043d\u044f; \u043f\u0430\u0440\u043e\u043b\u044c \u0430\u0434\u043c\u0456\u043d\u043a\u0438 \u043c\u043e\u0434\u0435\u043c\u0430 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u043c \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u043f\u0440\u0438\u0441\u0442\u0440\u043e\u0457, \u043f\u0456\u0441\u043b\u044f \u0434\u0432\u043e\u0445 \u043d\u0435\u0432\u0434\u0430\u043b\u0438\u0445 \u0432\u0445\u043e\u0434\u0456\u0432 \u0441\u043f\u0440\u043e\u0431\u0438 \u043f\u0440\u0438\u043f\u0438\u043d\u044f\u044e\u0442\u044c\u0441\u044f."

    const-string v1, "If the tablet is connected to the Wi-Fi of a ZTE USB modem (F30 Pro), the app reads the LTE tower number from its web interface: the modem is properly registered on the network, unlike the head unit\'s built-in modem. This gives the area within 1\u201320 km (for the start when GPS is spoofed and for the spoofing check). Read only; the modem admin password is stored encrypted on this device, and attempts stop after two failed logins."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0430\u0440\u043e\u043b\u044c \u0430\u0434\u043c\u0456\u043d\u043a\u0438 \u043c\u043e\u0434\u0435\u043c\u0430"

    const-string v1, "Modem admin password"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u0430\u0440\u043e\u043b\u044c"

    const-string v1, "Save password"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043f\u0430\u0440\u043e\u043b\u044c"

    const-string v1, "Delete password"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0430\u0440\u043e\u043b\u044c \u043d\u0435 \u0437\u0430\u0434\u0430\u043d\u043e"

    const-string v1, "Password not set"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f Wi-Fi \u043c\u043e\u0434\u0435\u043c\u0430\u2026"

    const-string v1, "Waiting for the modem Wi-Fi\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u0432\u0456\u0440\u043d\u0438\u0439 \u043f\u0430\u0440\u043e\u043b\u044c"

    const-string v1, "Wrong password"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0445\u0456\u0434 \u043d\u0435 \u0432\u0434\u0430\u0432\u0441\u044f"

    const-string v1, "Login failed"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0435\u043c\u0430\u0454 Wi-Fi \u043c\u043e\u0434\u0435\u043c\u0430"

    const-string v1, "No modem Wi-Fi"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0437\u0438\u0446\u0456\u0457 \u043d\u0435\u043c\u0430\u0454: \u043d\u0456 GPS, \u043d\u0456 \u0432\u0438\u0448\u043a\u0438 \u0437\u0432\'\u044f\u0437\u043a\u0443"

    const-string v1, "No position: neither GPS nor a cell tower"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0428\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438 BYD (\u0442\u0435\u0441\u0442)"

    const-string v1, "Speed from the BYD head unit (test)"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0426\u0435 \u0433\u043e\u043b\u043e\u0432\u043d\u0438\u0439 \u043f\u0440\u0438\u0441\u0442\u0440\u0456\u0439 BYD DiLink. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u043c\u043e\u0436\u0435 \u0431\u0440\u0430\u0442\u0438 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u043c\u0430\u0448\u0438\u043d\u0438 \u043f\u0440\u044f\u043c\u043e \u0437 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438: \u0442\u043e\u0447\u043d\u0456\u0448\u0435 \u0437\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u0431\u0435\u0437 GPS, \u043a\u043e\u043b\u0438 GPS \u0433\u043b\u0443\u0448\u0430\u0442\u044c. \u0414\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0432\u0456\u043d \u0437\u0430\u043f\u0443\u0441\u043a\u0430\u0454 \u043d\u0430 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0456 \u043c\u0430\u043b\u0435\u043d\u044c\u043a\u0443 \u0441\u043b\u0443\u0436\u0431\u0443 \u0447\u0435\u0440\u0435\u0437 \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f ADB \u043f\u043e \u043c\u0435\u0440\u0435\u0436\u0456 (\u043f\u043e\u0440\u0442 5555): \u0457\u0457 \u043c\u0430\u0454 \u0431\u0443\u0442\u0438 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e, \u0430 \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u0435\u0440\u0448\u043e\u0433\u043e \u043f\u0456\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043d\u044f \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u0442\u0440\u0435\u0431\u0430 \u043d\u0430\u0442\u0438\u0441\u043d\u0443\u0442\u0438 \u00ab\u0414\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438\u00bb (\u00ab\u0417\u0430\u0432\u0436\u0434\u0438 \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0442\u0438\u00bb). \u0427\u0438\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c, \u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u0439 \u043f\u0435\u0434\u0430\u043b\u044c \u0433\u0430\u043b\u044c\u043c\u0430, \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f \u0439 \u043d\u0435 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u044c\u0441\u044f \u043d\u0456\u043a\u0443\u0434\u0438. \u041f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438 \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f ADB \u043c\u043e\u0436\u0435 \u0432\u0438\u043c\u043a\u043d\u0443\u0442\u0438\u0441\u044f: \u0442\u043e\u0434\u0456 \u0443\u0432\u0456\u043c\u043a\u043d\u0456\u0442\u044c \u0439\u043e\u0433\u043e \u0437\u043d\u043e\u0432\u0443."

    const-string v1, "This is a BYD DiLink head unit. The app can take the car\'s speed straight from the head unit: more accurate than the estimate without GPS when GPS is jammed. To do that it starts a small service on the head unit through ADB debugging over the network (port 5555): it must be enabled, and on the first connection you have to tap \u201cAllow\u201d (\u201cAlways allow\u201d) on the screen. Only the speed, gear and brake pedal are read; nothing is changed or sent anywhere. After the head unit restarts, ADB debugging may turn off: enable it again then."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0440\u0430\u0442\u0438 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438"

    const-string v1, "Take the speed from the head unit"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u043f\u0443\u0441\u043a \u0441\u043b\u0443\u0436\u0431\u0438 \u043d\u0430 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0456\u2026"

    const-string v1, "Starting the service on the head unit\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043d\u044f\u2026"

    const-string v1, "Connecting\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u044c\u0442\u0435 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438 \u00ab\u0414\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f\u00bb"

    const-string v1, "Confirm \u201cAllow debugging\u201d on the head unit screen"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f ADB \u043f\u043e \u043c\u0435\u0440\u0435\u0436\u0456 (\u043f\u043e\u0440\u0442 5555) \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u0435"

    const-string v1, "ADB debugging over the network (port 5555) is off"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u043c\u0430\u0448\u0438\u043d\u0430 \u043d\u0435 \u0432\u0456\u0434\u0434\u0430\u0454 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c"

    const-string v1, "the car does not give the speed"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u043e\u0437\u0433\u043e\u0440\u043d\u0443\u0442\u0438 \u043f\u0430\u043d\u0435\u043b\u044c"

    const-string v1, "Expand panel"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0433\u043e\u0440\u043d\u0443\u0442\u0438 \u043f\u0430\u043d\u0435\u043b\u044c"

    const-string v1, "Collapse panel"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0421\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438, \u043f\u0435\u0440\u0435\u0457\u0437\u0434\u0438"

    const-string v1, "Traffic lights, crossings, rail crossings"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u00ab\u0421\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438, \u043f\u0435\u0440\u0435\u0457\u0437\u0434\u0438\u00bb. \u0411\u0430\u0437\u0430 \u0437 OpenStreetMap \u043f\u043e \u0432\u0441\u0456\u0439 \u0423\u043a\u0440\u0430\u0457\u043d\u0456: \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u043b\u0435\u0436\u0430\u0447\u0456 \u043f\u043e\u043b\u0456\u0441\u043c\u0435\u043d\u0438, \u043f\u0456\u0448\u043e\u0445\u0456\u0434\u043d\u0456 \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438 \u0439 \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438 \u0447\u0435\u0440\u0435\u0437 \u0432\u0435\u043b\u043e\u0434\u043e\u0440\u0456\u0436\u043a\u0438, \u0437\u0430\u043b\u0456\u0437\u043d\u0438\u0447\u043d\u0456 \u043f\u0435\u0440\u0435\u0457\u0437\u0434\u0438. \u0412\u043e\u043d\u0430 \u0432\u0448\u0438\u0442\u0430 \u0432 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0456 \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443; \u0437\u043d\u0430\u0447\u043a\u0438 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0437 15-\u0433\u043e \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0443. \u0413\u043e\u043b\u043e\u0441\u043e\u043c \u043f\u0440\u043e \u043d\u0438\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u043d\u0435 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0436\u0430\u0454. \u0420\u0430\u0437 \u043d\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0434\u043d\u0456\u0432, \u043a\u043e\u043b\u0438 \u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442, \u0431\u0430\u0437\u0430 \u043e\u043d\u043e\u0432\u043b\u044e\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0430 (\u0431\u043b\u0438\u0437\u044c\u043a\u043e 0,6 \u041c\u0411)."

    const-string v1, "Settings \u2192 Map & offline \u2192 \u201cTraffic lights, crossings, rail crossings\u201d. An OpenStreetMap database for all of Ukraine: traffic lights, speed bumps, pedestrian crossings and crossings of cycle paths, railway level crossings. It is built into the app and works without internet; icons appear on the map from zoom 15. The app does not warn about them by voice. Every few days, when there is internet, the database updates itself (about 0.6 MB)."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0411\u0430\u0437\u0430 \u0437 OpenStreetMap \u043f\u043e \u0432\u0441\u0456\u0439 \u0423\u043a\u0440\u0430\u0457\u043d\u0456: \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u043b\u0435\u0436\u0430\u0447\u0456 \u043f\u043e\u043b\u0456\u0441\u043c\u0435\u043d\u0438, \u043f\u0456\u0448\u043e\u0445\u0456\u0434\u043d\u0456 \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438 \u0439 \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438 \u0447\u0435\u0440\u0435\u0437 \u0432\u0435\u043b\u043e\u0434\u043e\u0440\u0456\u0436\u043a\u0438, \u0437\u0430\u043b\u0456\u0437\u043d\u0438\u0447\u043d\u0456 \u043f\u0435\u0440\u0435\u0457\u0437\u0434\u0438. \u0412\u043e\u043d\u0430 \u0432\u0448\u0438\u0442\u0430 \u0432 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0456 \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0437\u043d\u0430\u0447\u043a\u0438 \u0437 15-\u0433\u043e \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0443, \u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0431\u0435\u0437 GPS \u0432\u0440\u0430\u0445\u043e\u0432\u0443\u0454 \u0441\u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0435\u043d\u043d\u044f \u0431\u0456\u043b\u044f \u043d\u0438\u0445. \u0413\u043e\u043b\u043e\u0441\u043e\u043c \u043f\u0440\u043e \u0446\u0456 \u043c\u0456\u0441\u0446\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u043d\u0435 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0436\u0430\u0454. \u0414\u0430\u043d\u0456 \u043e\u043d\u043e\u0432\u043b\u044e\u044e\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0456 \u0440\u0430\u0437 \u043d\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0434\u043d\u0456\u0432, \u043a\u043e\u043b\u0438 \u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442, \u0431\u0435\u0437 \u043d\u043e\u0432\u043e\u0457 \u0432\u0435\u0440\u0441\u0456\u0457 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443; \u043d\u043e\u0432\u0438\u0439 \u043e\u0431\'\u0454\u043a\u0442 \u0437\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 \u0439\u043e\u0433\u043e \u043d\u0430\u043d\u0435\u0441\u043b\u0438 \u0432 OpenStreetMap \u0456 \u0432\u0438\u0439\u0448\u043b\u043e \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0431\u0430\u0437\u0438."

    const-string v1, "An OpenStreetMap database for all of Ukraine: traffic lights, speed bumps, pedestrian crossings and crossings of cycle paths, railway level crossings. It is built into the app and works without internet: icons appear on the map from zoom 15, and the position estimate without GPS takes the slowdowns near them into account. The app does not warn about these places by voice. The data updates itself every few days when there is internet, without a new app version; a new object appears once it has been mapped in OpenStreetMap and a database update has been published."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0430\u2026"

    const-string v1, "Checking\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0431\u0430\u0437\u0438"

    const-string v1, "Check for database update"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u0442\u0443\u0442, \u0449\u043e\u0431 \u043e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043a\u043b\u044e\u0447 Mapbox"

    const-string v1, "Tap here to get a Mapbox key"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c"

    const-string v1, "Truck mode"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u00ab\u0422\u0438\u043f \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044f\u00bb \u2192 \u00ab\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439\u00bb. \u0412\u043a\u0430\u0436\u0456\u0442\u044c \u043f\u043e\u0432\u043d\u0443 \u043c\u0430\u0441\u0443 (\u0437 \u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043c), \u0432\u0438\u0441\u043e\u0442\u0443 \u0439 \u0448\u0438\u0440\u0438\u043d\u0443: \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u043c\u0438\u043d\u0430\u0442\u0438\u043c\u0435 \u043c\u043e\u0441\u0442\u0438, \u0434\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u0440\u043e\u0457\u0437\u0434\u0438, \u0434\u0435 \u0437\u043d\u0430\u043a\u0438 OpenStreetMap \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u044f\u044e\u0442\u044c \u0432\u0430\u0448\u0443 \u043c\u0430\u0441\u0443, \u0432\u0438\u0441\u043e\u0442\u0443, \u0448\u0438\u0440\u0438\u043d\u0443 \u0430\u0431\u043e \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0443\u0445. \u041f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u043e\u043a\u0440\u0435\u043c\u0438\u0439 \u0433\u0440\u0430\u0444 \u00ab\u0423\u043a\u0440\u0430\u0457\u043d\u0430 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a\u00bb (\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a, \u0431\u043b\u0438\u0437\u044c\u043a\u043e 285 \u041c\u0411, \u043f\u0456\u0441\u043b\u044f \u0440\u043e\u0437\u043f\u0430\u043a\u0443\u0432\u0430\u043d\u043d\u044f 500 \u041c\u0411; \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi). \u0423 \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u043e\u043c\u0443 \u0440\u0435\u0436\u0438\u043c\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0437\u0430 \u043d\u0438\u043c, \u043d\u0430\u0432\u0456\u0442\u044c \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c: Mapbox \u0456 OSRM \u0446\u0438\u0445 \u0437\u043d\u0430\u043a\u0456\u0432 \u043d\u0435 \u0437\u043d\u0430\u044e\u0442\u044c, \u0437\u0430\u0442\u043e\u0440\u0438 \u043d\u0435 \u0432\u0440\u0430\u0445\u043e\u0432\u0443\u044e\u0442\u044c\u0441\u044f. \u0424\u0443\u043d\u043a\u0446\u0456\u044f \u043f\u043b\u0430\u0442\u043d\u0430 (\u043f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434 \u0430\u0431\u043e \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430). \u0417\u043d\u0430\u043a\u0438 \u0432 OpenStreetMap \u0454 \u043d\u0435 \u0441\u043a\u0440\u0456\u0437\u044c, \u0442\u043e\u043c\u0443 \u0437\u043d\u0430\u043a\u0438 \u043d\u0430 \u0434\u043e\u0440\u043e\u0437\u0456 \u0437\u0430\u0432\u0436\u0434\u0438 \u0433\u043e\u043b\u043e\u0432\u043d\u0456\u0448\u0456 \u0437\u0430 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v1, "Settings \u2192 \u201cVehicle type\u201d \u2192 \u201cTruck\u201d. Enter the gross weight (with load), height and width: the route will avoid bridges, roads and underpasses where OpenStreetMap signs forbid your weight, height, width or truck traffic. A separate graph \u201cUkraine for trucks\u201d is required (Map & offline \u2192 Road graph for trucks, about 285 MB, 500 MB unpacked; better over Wi-Fi). In the truck mode routes are built only from it, even online: Mapbox and OSRM do not know these signs, and traffic jams are not taken into account. This is a paid feature (trial or subscription). OpenStreetMap has no signs everywhere, so the road signs always take priority over the app\u2019s hints."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0438\u043f \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044f"

    const-string v1, "Vehicle type"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041b\u0435\u0433\u043a\u043e\u0432\u0438\u0439"

    const-string v1, "Car"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439"

    const-string v1, "Truck"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0432\u0438\u0447\u0430\u0439\u043d\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438. \u0414\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u043e\u0431\u0435\u0440\u0456\u0442\u044c \u00ab\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439\u00bb: \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u0431\u0445\u043e\u0434\u0438\u0442\u0438\u043c\u0435 \u043c\u043e\u0441\u0442\u0438, \u0434\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u0440\u043e\u0457\u0437\u0434\u0438, \u0434\u0435 \u0437\u043d\u0430\u043a\u0438 \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u044f\u044e\u0442\u044c \u0432\u0430\u0448\u0443 \u043c\u0430\u0441\u0443, \u0432\u0438\u0441\u043e\u0442\u0443, \u0448\u0438\u0440\u0438\u043d\u0443 \u0430\u0431\u043e \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0443\u0445."

    const-string v2, "Regular routes. For a truck choose \u201cTruck\u201d: the route will avoid bridges, roads and underpasses where signs forbid your weight, height, width or truck traffic."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f: \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456 \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0431\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438."

    const-string v2, "Paid feature: available during the trial and with a subscription. On the free plan the truck mode does not build routes."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0434\u0430\u043d\u0456 \u0432\u0430\u0448\u043e\u0457 \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u0437 \u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043c. \u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u043c\u0438\u043d\u0430\u0442\u0438\u043c\u0435 \u0434\u0456\u043b\u044f\u043d\u043a\u0438, \u0434\u0435 \u0437\u043d\u0430\u043a \u043e\u0431\u043c\u0435\u0436\u0443\u0454 \u043c\u0430\u0441\u0443 \u043d\u0438\u0436\u0447\u0435 \u0432\u043a\u0430\u0437\u0430\u043d\u043e\u0457, \u0432\u0438\u0441\u043e\u0442\u0443 \u0447\u0438 \u0448\u0438\u0440\u0438\u043d\u0443 \u043d\u0438\u0436\u0447\u0435 \u0432\u0430\u0448\u0438\u0445, \u0430 \u0442\u0430\u043a\u043e\u0436 \u0434\u0456\u043b\u044f\u043d\u043a\u0438 \u0456\u0437 \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u043e\u044e \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a. \u0414\u0430\u043d\u0456 \u0431\u0435\u0440\u0443\u0442\u044c\u0441\u044f \u0437 OpenStreetMap \u0456 \u043f\u043e\u0432\u043d\u0456 \u043d\u0435 \u0441\u043a\u0440\u0456\u0437\u044c: \u0437\u043d\u0430\u043a\u0438 \u043d\u0430 \u0434\u043e\u0440\u043e\u0437\u0456 \u0437\u0430\u0432\u0436\u0434\u0438 \u0433\u043e\u043b\u043e\u0432\u043d\u0456\u0448\u0456 \u0437\u0430 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v2, "Enter your truck\u2019s data with the load. The route will avoid sections where a sign limits the weight below yours, the height or width below yours, and sections closed to trucks. The data comes from OpenStreetMap and is not complete everywhere: road signs always take priority over the app\u2019s hints."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041f\u043e\u0432\u043d\u0430 \u043c\u0430\u0441\u0430, \u0442"

    const-string v2, "Gross weight, t"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0441\u043e\u0442\u0430, \u043c"

    const-string v2, "Height, m"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430, \u043c"

    const-string v2, "Width, m"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e: \u0431\u0435\u0437 \u043d\u044c\u043e\u0433\u043e \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0431\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0439\u043e\u0433\u043e \u043d\u0438\u0436\u0447\u0435, \u0432 \u0440\u043e\u0437\u0434\u0456\u043b\u0456 \u00ab\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a\u00bb."

    const-string v2, "The road graph for trucks is not downloaded: without it the truck mode does not build routes. Download it below, in the \u201cRoad graph for trucks\u201d section."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a"

    const-string v2, "Road graph for trucks"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u041e\u043a\u0440\u0435\u043c\u0438\u0439 \u0433\u0440\u0430\u0444 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u043e\u0433\u043e \u0440\u0435\u0436\u0438\u043c\u0443: \u0434\u043e \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0445 \u0434\u043e\u0440\u0456\u0433 \u0434\u043e\u0434\u0430\u043d\u043e \u0437\u043d\u0430\u043a\u0438 OpenStreetMap \u043f\u0440\u043e \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0443 \u043c\u0430\u0441\u0443, \u0432\u0438\u0441\u043e\u0442\u0443, \u0448\u0438\u0440\u0438\u043d\u0443 \u0439 \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u0443 \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u043e\u0433\u043e \u0440\u0443\u0445\u0443. \u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u0431\u0443\u0434\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0437\u0430 \u0446\u0438\u043c \u0433\u0440\u0430\u0444\u043e\u043c (\u043d\u0430\u0432\u0456\u0442\u044c \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c), Mapbox \u0456 OSRM \u0446\u0438\u0445 \u0437\u043d\u0430\u043a\u0456\u0432 \u043d\u0435 \u0437\u043d\u0430\u044e\u0442\u044c. \u0413\u0440\u0430\u0444 \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f \u043e\u043a\u0440\u0435\u043c\u043e \u0439 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0434\u043b\u044f \u043d\u043e\u0432\u043e\u0433\u043e \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0432\u0435\u043b\u0438\u043a\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi."

    const-string v2, "A separate graph for the truck mode: besides regular roads it holds OpenStreetMap signs about maximum weight, height, width and the ban on truck traffic. A truck route is built only from this graph (even online); Mapbox and OSRM do not know these signs. The graph for regular routes stays separate and is needed for the new guidance without GPS. Large download: better over Wi-Fi."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0433\u0440\u0430\u0444 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a?"

    const-string v2, "Delete the road graph for trucks?"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0437\u043c\u043e\u0436\u0435 \u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0430\u0442\u044c \u0437\u043d\u043e\u0432\u0443."

    const-string v2, "The truck mode will not be able to build routes until the graph is downloaded again."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0430\u043d\u0442\u0430\u0436\u043d\u0438\u0439 \u0440\u0435\u0436\u0438\u043c \u2014 \u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f (\u043f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434 \u0430\u0431\u043e \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430)."

    const-string v2, "Truck mode is a paid feature (trial or subscription)."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0433\u0440\u0430\u0444 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d."

    const-string v2, "Download the graph for trucks: Settings \u2192 Map & offline."

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423\u043a\u0440\u0430\u0457\u043d\u0430 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a"

    const-string v2, "Ukraine for trucks"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0412\u0430\u043d\u0442\u0430\u0436"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
