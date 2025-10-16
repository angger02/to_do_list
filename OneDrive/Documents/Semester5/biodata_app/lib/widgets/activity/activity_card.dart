import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
	final String mood;
	final String activity;
	final int index;
	final VoidCallback onDelete;
	final VoidCallback onTap;

	const ActivityCard({
		super.key,
		required this.mood,
		required this.activity,
		required this.index,
		required this.onDelete,
		required this.onTap,
	});

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onTap,
			child: Container(
				margin: const EdgeInsets.only(bottom: 12),
				decoration: BoxDecoration(
					gradient: LinearGradient(
						colors: [
							Colors.purple.shade50,
							Colors.pink.shade50,
						],
					),
					borderRadius: BorderRadius.circular(20),
					boxShadow: [
						BoxShadow(
							color: Colors.purple.shade100.withOpacity(0.5),
							blurRadius: 10,
							offset: const Offset(0, 4),
						),
					],
				),
				child: ListTile(
					contentPadding: const EdgeInsets.symmetric(
						horizontal: 20,
						vertical: 8,
					),
					leading: Container(
						padding: const EdgeInsets.all(12),
						decoration: BoxDecoration(
							color: Colors.white,
							borderRadius: BorderRadius.circular(12),
						),
						child: Text(
							mood,
							style: const TextStyle(fontSize: 28),
						),
					),
					title: Text(
						activity,
						style: TextStyle(
							fontSize: 16,
							fontWeight: FontWeight.w600,
							color: Colors.grey.shade800,
						),
					),
					subtitle: Row(
						children: [
							Text(
								'Aktivitas #${index + 1}',
								style: TextStyle(
									fontSize: 12,
									color: Colors.grey.shade600,
								),
							),
							const SizedBox(width: 8),
							Icon(
								Icons.edit_outlined,
								size: 14,
								color: Colors.grey.shade500,
							),
							const SizedBox(width: 2),
							Text(
								'Tap untuk edit',
								style: TextStyle(
									fontSize: 11,
									color: Colors.grey.shade500,
									fontStyle: FontStyle.italic,
								),
							),
						],
					),
					trailing: IconButton(
						icon: Icon(
							Icons.delete_outline_rounded,
							color: Colors.red.shade400,
							size: 24,
						),
						onPressed: onDelete,
					),
				),
			),
		);
	}
}